// Mercedes V8 DJet Engine Simulator
// (C) andy@britishideas.com 2021

#include <Arduino.h>
#include "Engine.h"

// special value to indicate no manifold pressure required
#define NO_PRESSURE -1

// default air temperature at start of simulation
#define DEFAULT_AIRTEMPF 72

// pins
#define PIN_STATUS_LED    A3  // PC3
#define PIN_START         7   // PD7
#define PIN_TRIGGERGROUP1 9   // PB1
#define PIN_TRIGGERGROUP2 5   // PD5
#define PIN_TRIGGERGROUP3 6   // PD6
#define PIN_TRIGGERGROUP4 3   // PD3
#define PIN_TPSWOT        8   // PB0
#define PIN_TPSIDLE       A0  // PC0
#define PIN_TPSACCEL1     A2  // PC2
#define PIN_TPSACCEL2     A1  // PC1
#define PIN_VAC1          4   // PD4
#define PIN_VAC2          2   // PD2
#define PIN_AIRTEMPCS     A5  // PC5
#define PIN_COOLANTTEMPCS A4  // PC4

// IO macros
#define STATUS_LED_ON          digitalWrite(PIN_STATUS_LED, LOW)
#define STATUS_LED_OFF         digitalWrite(PIN_STATUS_LED, HIGH);
#define IS_STATUS_LED_ON       (digitalRead(PIN_STATUS_LED) == 1 ? FALSE : TRUE)

#define STARTING               digitalWrite(PIN_START, HIGH);
#define NOTSTARTING            digitalWrite(PIN_START, LOW);

#define AIRTEMPCS_ASSERT       digitalWrite(PIN_AIRTEMPCS, LOW);
#define AIRTEMPCS_DEASSERT     digitalWrite(PIN_AIRTEMPCS, HIGH);

#define COOLANTTEMPCS_ASSERT   digitalWrite(PIN_COOLANTTEMPCS, LOW);
#define COOLANTTEMPCS_DEASSERT digitalWrite(PIN_COOLANTTEMPCS, HIGH);

#define TPS_WOT                digitalWrite(PIN_TPSWOT, HIGH);
#define TPS_NOTWOT             digitalWrite(PIN_TPSWOT, LOW);

#define TPS_IDLE               digitalWrite(PIN_TPSIDLE, HIGH);
#define TPS_NOTIDLE            digitalWrite(PIN_TPSIDLE, LOW);

#define TPS_WOT                digitalWrite(PIN_TPSWOT, HIGH);
#define TPS_NOTWOT             digitalWrite(PIN_TPSWOT, LOW);

#define TPS_ACCEL1_ASSERT      digitalWrite(PIN_TPSACCEL1, HIGH);
#define TPS_ACCEL1_DEASSERT    digitalWrite(PIN_TPSACCEL1, LOW);

#define TPS_ACCEL2_ASSERT      digitalWrite(PIN_TPSACCEL2, HIGH);
#define TPS_ACCEL2_DEASSERT    digitalWrite(PIN_TPSACCEL2, LOW);

#define TPS_VAC1_ASSERT        digitalWrite(PIN_VAC1, HIGH);
#define TPS_VAC1_DEASSERT      digitalWrite(PIN_VAC1, LOW);

#define TPS_VAC2_ASSERT        digitalWrite(PIN_VAC2, HIGH);
#define TPS_VAC2_DEASSERT      digitalWrite(PIN_VAC2, LOW);

#define ASSERT   1
#define DEASSERT 0

// defines an acceleration enrichment state
typedef struct _enrichment
{
  int ThrottleLow;                                         // % x10
  int ThrottleHigh;                                        // % x10
  int Accel1State;
  int Accel2State;
} enrichment_t;

static int EngineSpeed;                                    // RPM
static int AirTempF;
static int CoolantTempF;
static int ThrottlePosition;                               // %
static throttledirection_t ThrottleDirection;
static int Pressure;                                       // manifold, inHg
static bool Cranking;
static enrichment_t Enrichment[] = {
  // thr low, thr high, accel1, accel2
  {0,   23,   DEASSERT, ASSERT},    // accel 2 finger 1
  {24,  46,   DEASSERT, DEASSERT},
  {47,  69,   ASSERT,   DEASSERT},  // accel 1 finger 1
  {70,  92,   DEASSERT, DEASSERT},
  {93,  115,  DEASSERT, ASSERT},    // accel 2 finger 2
  {116, 138,  DEASSERT, DEASSERT},
  {139, 162,  ASSERT,   DEASSERT},  // 2
  {163, 185,  DEASSERT, DEASSERT},  // start of typical cruise area
  {186, 208,  DEASSERT, ASSERT},    // 3
  {209, 231,  DEASSERT, DEASSERT},
  {232, 254,  ASSERT,   DEASSERT},  // 3, end of typical cruise area
  {255, 277,  DEASSERT, DEASSERT},
  {256, 300,  DEASSERT, ASSERT},    // 4
  {301, 323,  DEASSERT, DEASSERT},
  {324, 346,  ASSERT,   DEASSERT},  // 4
  {347, 369,  DEASSERT, DEASSERT},
  {370, 392,  DEASSERT, ASSERT},    // 5
  {393, 415,  DEASSERT, DEASSERT},
  {416, 438,  ASSERT,   DEASSERT},  // 5
  {439, 462,  DEASSERT, DEASSERT},
  {463, 485,  DEASSERT, ASSERT},    // 6
  {486, 508,  DEASSERT, DEASSERT},
  {509, 531,  ASSERT,   DEASSERT},  // 6
  {532, 554,  DEASSERT, DEASSERT},
  {555, 577,  DEASSERT, ASSERT},    // 7
  {578, 600,  DEASSERT, DEASSERT},
  {601, 623,  ASSERT,   DEASSERT},  // 7
  {624, 646,  DEASSERT, DEASSERT},
  {647, 669,  DEASSERT, ASSERT},    // 8
  {670, 692,  DEASSERT, DEASSERT},
  {693, 715,  ASSERT,   DEASSERT},  // 8
  {716, 738,  DEASSERT, DEASSERT},
  {739, 762,  DEASSERT, ASSERT},    // 9
  {763, 785,  DEASSERT, DEASSERT},
  {786, 808,  ASSERT,   DEASSERT},  // 9
  {809, 831,  DEASSERT, DEASSERT},
  {832, 854,  DEASSERT, ASSERT},    // 10
  {855, 877,  DEASSERT, DEASSERT},
  {878, 900,  ASSERT,   DEASSERT},  // 10
  {901, 1000, ASSERT,   DEASSERT}
};

// Gets the current time in milliseconds since last power on
static unsigned long GetTime
  (
  void
  )
{
  return millis();
}

// Checks if a timestamp is in the past, handles 32-bit timer overflow
static uint8_t IsTimeExpired
  (
  unsigned long timestamp            // timestamp to check
  )
{
  unsigned long time_now;

  time_now = millis();
  if (time_now >= timestamp)
  {
    if ((time_now - timestamp) < 0x80000000)
      return 1;
    else
      return 0;
  }
  else
  {
    if ((timestamp - time_now) >= 0x80000000)
      return 1;
    else
      return 0;
  }
}

// set new engine parameters
void Engine_Set
  (
  int EngineSpeed,                                         // new speed in RPM
  int CoolantTempF,                                        // new coolant temperature in F
  int ThrottlePosition,                                    // new throttle position 0% -> 100%
  throttledirection_t ThrottleDirection,                   // new throttle direction
  int Pressure,                                            // new manifold pressure
  bool Cranking                                            // new cranking state
  )
{
  Engine_SetEngineSpeed(EngineSpeed);
  Engine_SetCoolantTempF(CoolantTempF);
  Engine_SetThrottle(ThrottlePosition, ThrottleDirection);
  Engine_SetManifoldPressure(Pressure);
  Engine_SetCranking(Cranking);
}

// get current engine parameters
void Engine_Get
  (
  int *pEngineSpeed,                                       // speed in RPM
  int *pCoolantTempF,                                      // coolant temperature in F
  int *pThrottlePosition,                                  // throttle position 0% -> 100%
  throttledirection_t *pThrottleDirection,                 // throttle direction
  int *pPressure,                                          // manifold pressure
  int *pAirTempF,                                          // air temperature
  bool *pCranking                                          // cranking state
  )
{
  *pEngineSpeed = EngineSpeed;
  *pCoolantTempF = CoolantTempF;
  *pThrottlePosition = ThrottlePosition;
  *pThrottleDirection = ThrottleDirection;
  *pPressure = Pressure;
  *pAirTempF = AirTempF;
  *pCranking = Cranking;
}

// sets the engine speed
void Engine_SetEngineSpeed
  (
  int NewSpeed                                             // new speed in RPM
  )
{
  EngineSpeed = NewSpeed;
}

// sets the air temperature
void Engine_SetAirTempF
  (
  int NewAirTempF                                          // new air temperature in F
  )
{
  AirTempF = NewAirTempF;
}

// sets the coolant temperature 
void Engine_SetCoolantTempF
  (
  int NewCoolantTempF                                      // new coolant temperature in F
  )
{
  CoolantTempF = NewCoolantTempF;
}

// sets the throttle position and direction
void Engine_SetThrottle
  (
  int NewThrottlePosition,                                 // new throttle position 0% -> 100%
  throttledirection_t NewThrottleDirection                 // new throttle direction
  )
{
  ThrottlePosition = NewThrottlePosition;
  ThrottleDirection = NewThrottleDirection;

  // https://www.sw-em.com/bosch_d-jetronic_injection.htm#reference_information_tps

  // idle switch
  if (ThrottlePosition <= 2)
  {
    TPS_IDLE;
  }
  else
  {
    TPS_NOTIDLE;
  }

  // wide open throttle switch
  if (ThrottlePosition >= 90)
  {
    TPS_WOT;
  }
  else
  {
    TPS_NOTWOT;
  }

  // enrichment pulses
  if ((ThrottleDirection == THROTTLE_ACCELERATING) || (ThrottleDirection == THROTTLE_NONE))
  {
    // adjust throttle position for calculation, avoids the need for floating point
    int T10 = ThrottlePosition * 10;
    if (T10 < 0)    T10 = 0;
    if (T10 > 1000) T10 = 1000;

    // search for current enrichment setting
    int NumEnrichmentPos = sizeof(Enrichment) / sizeof(enrichment_t);
    for (int e = 0; e < NumEnrichmentPos; e++)
    {
      if ((T10 >= Enrichment[e].ThrottleLow) && (T10 <= Enrichment[e].ThrottleHigh))
      {
        if (Enrichment[e].Accel1State == ASSERT)
        {
          TPS_ACCEL1_ASSERT;
        }
        else
        {
          TPS_ACCEL1_DEASSERT;
        }

        if (Enrichment[e].Accel2State == ASSERT)
        {
          TPS_ACCEL2_ASSERT;
        }
        else
        {
          TPS_ACCEL2_DEASSERT;
        }

        break;
      }
    }
  }
  else
  {
    // no pulses when decelerating
    TPS_ACCEL1_DEASSERT;
    TPS_ACCEL2_DEASSERT;
  }
}

// sets the new pressure level from the manifold
void Engine_SetManifoldPressure
  (
  int NewPressure                                          // new pressure level in inHg
  )
{
  if (NewPressure != NO_PRESSURE)
  {
    Serial.print(F("ACTION: MANUALLY SET PRESSURE TO "));
    Serial.print(NewPressure);
    Serial.println(F(" INHG"));
  }
  else if (NewPressure != Pressure)
  {
    Serial.println(F("ACTION: RELEASE ALL PRESSURE"));
  }

   Pressure = NewPressure;
}

// sets the cranking state
extern void Engine_SetCranking
  (
  bool NewCranking                                         // true if cranking
  )
{
  Cranking = NewCranking;

  if (Cranking)
  {
    STARTING;
  }
  else
  {
    NOTSTARTING;
  }
}

// sets the engine to cold idle state
void Engine_ColdIdle
  (
  void  
  )
{
  Engine_Set(1200, DEFAULT_AIRTEMPF, 0, THROTTLE_NONE, 15, false);
}

// sets the engine to hot idle state
void Engine_HotIdle
  (
  void  
  )
{
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15, false);
}

// sets the engine to cruising at 30 MPH
void Engine_Cruise30MPH
  (
  void  
  )
{

  Engine_Set(1500, 185, 170, THROTTLE_ACCELERATING, 11, false);
}

// sets the engine to cruising at 70 MPH
void Engine_Cruise70MPH
  (
  void  
  )
{
  Engine_Set(3000, 185, 250, THROTTLE_ACCELERATING, 11, false);
}

// sets the engine to gentle acceleration
void Engine_GentleAcceleration
  (
  void  
  )
{
  Engine_Set(1800, 185, 300, THROTTLE_ACCELERATING, 9, false);
}

// sets the engine to moderate acceleration
void Engine_ModerateAcceleration
  (
  void  
  )
{
  // fixme = to do
  Engine_Set(3500, 185, 500, THROTTLE_ACCELERATING, 7, false);
}

// sets the engine to hard acceleration
void Engine_HardAcceleration
  (
  void  
  )
{
  Engine_Set(6000, 185, 950, THROTTLE_ACCELERATING, 2, false);
}

// turns the engine off
void Engine_Off
  (
  void  
  )
{
  Engine_Set(0, DEFAULT_AIRTEMPF, 0, THROTTLE_NONE, NO_PRESSURE, false);
}

// sets the engine to cranking
void Engine_Cranking
  (
  void  
  )
{
  Engine_Set(0, DEFAULT_AIRTEMPF, 0, THROTTLE_NONE, NO_PRESSURE, true);
}

// initializes engine simulation
void Engine_Init
   (
   void
   )
{
  STATUS_LED_OFF;

  Engine_Off();
  Engine_SetAirTempF(DEFAULT_AIRTEMPF);
}

// call repeatedly to implement the engine simulation
void Engine_Process
  (
  void
  )
{
}
