// Mercedes V8 DJet Engine Simulator
// (C) andy@britishideas.com 2021

#include <Arduino.h>
#include "Engine.h"
#include "AirTempSensor.h"
#include "CoolantTempSensor.h"
#include "arduino-mcp4xxx-master/mcp4xxx.h"
#include "TimerOne-master/TimerOne.h"

using namespace icecave::arduino;

// special value to indicate no manifold pressure required
#define NO_PRESSURE -1

// default air temperature at start of simulation
#define DEFAULT_AIRTEMPF 72

// default pulse generator pulse angle in degrees of distributor rotation
#define DEFAULT_PULSEANGLE 135

// pins
#define PIN_STATUS_LED    A3  // PC3
#define PIN_START         7   // PD7
#define PIN_TPSWOT        8   // PB0
#define PIN_TPSIDLE       A0  // PC0
#define PIN_TPSACCEL1     A2  // PC2
#define PIN_TPSACCEL2     A1  // PC1
#define PIN_VAC1          4   // PD4
#define PIN_VAC2          2   // PD2
#define PIN_AIRTEMPCS     A5  // PC5
#define PIN_COOLANTTEMPCS A4  // PC4

#define PORT_TRIGGERGROUP1 PORTB
#define PORT_TRIGGERGROUP2 PORTD
#define PORT_TRIGGERGROUP3 PORTD
#define PORT_TRIGGERGROUP4 PORTD

#define PIN_TRIGGERGROUP1 1
#define PIN_TRIGGERGROUP2 6
#define PIN_TRIGGERGROUP3 5
#define PIN_TRIGGERGROUP4 3

#define DIR_TRIGGERGROUP1 DDRB
#define DIR_TRIGGERGROUP2 DDRD
#define DIR_TRIGGERGROUP3 DDRD
#define DIR_TRIGGERGROUP4 DDRD

#define FALSE 0
#define TRUE  1

// IO macros
#define STATUS_LED_ON          digitalWrite(PIN_STATUS_LED, LOW)
#define STATUS_LED_OFF         digitalWrite(PIN_STATUS_LED, HIGH);
#define IS_STATUS_LED_ON       (digitalRead(PIN_STATUS_LED) == 1 ? FALSE : TRUE)

#define STARTING               digitalWrite(PIN_START, HIGH);
#define NOTSTARTING            digitalWrite(PIN_START, LOW);

#define TPS_WOT                digitalWrite(PIN_TPSWOT, HIGH);
#define TPS_NOTWOT             digitalWrite(PIN_TPSWOT, LOW);

#define TPS_IDLE               digitalWrite(PIN_TPSIDLE, HIGH);
#define TPS_NOTIDLE            digitalWrite(PIN_TPSIDLE, LOW);

#define TPS_ACCEL1_ASSERT      digitalWrite(PIN_TPSACCEL1, HIGH);
#define TPS_ACCEL1_DEASSERT    digitalWrite(PIN_TPSACCEL1, LOW);

#define TPS_ACCEL2_ASSERT      digitalWrite(PIN_TPSACCEL2, HIGH);
#define TPS_ACCEL2_DEASSERT    digitalWrite(PIN_TPSACCEL2, LOW);

#define VAC1_ASSERT            digitalWrite(PIN_VAC1, HIGH);
#define VAC1_DEASSERT          digitalWrite(PIN_VAC1, LOW);

#define VAC2_ASSERT            digitalWrite(PIN_VAC2, HIGH);
#define VAC2_DEASSERT          digitalWrite(PIN_VAC2, LOW);

#define AIRTEMPCS_DEASSERT     digitalWrite(PIN_AIRTEMPCS, HIGH);
#define COOLANTTEMPCS_DEASSERT digitalWrite(PIN_COOLANTTEMPCS, HIGH);

#define TRIGGERGROUP1_HIGH (PORT_TRIGGERGROUP1 &= ~(1 << PIN_TRIGGERGROUP1))
#define TRIGGERGROUP1_LOW  (PORT_TRIGGERGROUP1 |=  (1 << PIN_TRIGGERGROUP1))
#define TRIGGERGROUP2_HIGH (PORT_TRIGGERGROUP2 &= ~(1 << PIN_TRIGGERGROUP2))
#define TRIGGERGROUP2_LOW  (PORT_TRIGGERGROUP2 |=  (1 << PIN_TRIGGERGROUP2))
#define TRIGGERGROUP3_HIGH (PORT_TRIGGERGROUP3 &= ~(1 << PIN_TRIGGERGROUP3))
#define TRIGGERGROUP3_LOW  (PORT_TRIGGERGROUP3 |=  (1 << PIN_TRIGGERGROUP3))
#define TRIGGERGROUP4_HIGH (PORT_TRIGGERGROUP4 &= ~(1 << PIN_TRIGGERGROUP4))
#define TRIGGERGROUP4_LOW  (PORT_TRIGGERGROUP4 |=  (1 << PIN_TRIGGERGROUP4))

#define ASSERT   1
#define DEASSERT 0

// number of pulse generator triggers = number of injector groups x 2
#define NUM_PULSEGENERATOR_TRIGGERS 8

// time between turning the status LED on or off in milliseconds
#define LED_FLASH_PERIOD_ENGINEOFF 1000
#define LED_FLASH_PERIOD_ENGINEON  250

// resistance of wiper
// obtained by trial and error
#define DIGITAL_POT_WIPER_R_AIR     232
#define DIGITAL_POT_WIPER_R_COOLANT 233

// minimum and maximum resistance in ohms that the hardware can generate
// these values correspond to a wiper position of 0 -> max_value()-1
// and were obtained by measurement
// from the Steinhart-Hart spreadsheets:
// Air:     4960 Ohms = -46.3F, 248 Ohms = 77.5F
// Coolant: 4960 Ohms = 39F,    248 Ohms = 193F
// the corresponding temp ranges must be reflected in MIN_xxx_TEMP and
// MAX_xxx_TEMP in Menu.cpp
#define AIRTEMP_MIN_R     (248  - DIGITAL_POT_WIPER_R_AIR)
#define AIRTEMP_MAX_R     (4960 - DIGITAL_POT_WIPER_R_AIR)
#define COOLANTTEMP_MIN_R (248  - DIGITAL_POT_WIPER_R_COOLANT)
#define COOLANTTEMP_MAX_R (4960 - DIGITAL_POT_WIPER_R_COOLANT)

// number of bits of resolution for digital pot
#define DIGITAL_POT_RESOLUTION 256

// macro to check if engine is on
#define IS_ENGINE_ON (EngineSpeed > 0)

// defines an acceleration enrichment state
typedef struct _enrichment
{
  int ThrottleLow;                                         // % x10
  int ThrottleHigh;                                        // % x10
  int Accel1State;
  int Accel2State;
} enrichment_t;

// pulse generator trigger states for state machine
typedef enum _triggerstates { G1START, G1END, G2START, G2END, G3START, G3END, G4START, G4END } triggerstates_t;

// defines a single pulse generator trigger state
typedef struct _trigger
{
  triggerstates_t State;                                   // type of edge to generate
  unsigned short Match;                                    // time since last trigger in microseconds
} trigger_t;

static int EngineSpeed;                                    // RPM
static int AirTempF;
static int CoolantTempF;
static int ThrottlePosition;                               // %
static throttledirection_t ThrottleDirection;
static int Pressure;                                       // manifold, inHg
static bool Cranking;
// source: https://github.com/jmalloc/arduino-mcp4xxx
static MCP4XXX *AirTempPot;
static MCP4XXX *CoolantTempPot;
static trigger_t Triggers[NUM_PULSEGENERATOR_TRIGGERS];
static int PulseAngle;
static int CurrentTrigger;
static unsigned long LEDTimestamp;
static float AirRperW;
static float CoolantRperW;

// this table represents the fingers inside the throttle
// position sensor. As the throttle is increased the
// fingers cause accel1 and accel2 to alternate low.
// Generated by making a scale drawing of the fingers for
// 0% -> 90% throttle - see Alibre Design file.
// Throttle percentages are multiplied by 10
static enrichment_t Enrichment[] = {
  // thr low, thr high, accel1, accel2
  {0,   23,   DEASSERT, ASSERT},    // accel 2 finger 1
  {24,  46,   DEASSERT, DEASSERT},
  {47,  69,   ASSERT,   DEASSERT},  // accel 1 finger 1
  {70,  92,   DEASSERT, DEASSERT},
  {93,  115,  DEASSERT, ASSERT},    // 2
  {116, 138,  DEASSERT, DEASSERT},
  {139, 162,  ASSERT,   DEASSERT},  // 2
  {163, 185,  DEASSERT, DEASSERT},  // start of typical cruise area
  {186, 208,  DEASSERT, ASSERT},    // 3
  {209, 231,  DEASSERT, DEASSERT},
  {232, 254,  ASSERT,   DEASSERT},  // 3
  {255, 277,  DEASSERT, DEASSERT},  // end of typical cruise area
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
  {832, 854,  DEASSERT, ASSERT},    // accel 2 finger 10
  {855, 877,  DEASSERT, DEASSERT},
  {878, 900,  ASSERT,   DEASSERT},  // accel 1 finger 10
  {901, 1000, ASSERT,   DEASSERT}   // beyond 90% throttle accel 1 stays low
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

volatile int cnt = 0;

// interrupt that handles the pulse generation
static void PulseGenerator_Handler
  (
  void  
  )
{
  // toggle edge for this trigger
  switch (Triggers[CurrentTrigger].State)
  {
    case G1START: TRIGGERGROUP1_LOW;  break;
    case G1END:   TRIGGERGROUP1_HIGH; break;
    case G2START: TRIGGERGROUP2_LOW;  break;
    case G2END:   TRIGGERGROUP2_HIGH; break;
    case G3START: TRIGGERGROUP3_LOW;  break;
    case G3END:   TRIGGERGROUP3_HIGH; break;
    case G4START: TRIGGERGROUP4_LOW;  break;
    case G4END:   TRIGGERGROUP4_HIGH; break;
  }

  // go to next trigger
  if (++CurrentTrigger == NUM_PULSEGENERATOR_TRIGGERS) CurrentTrigger = 0;

  // restart
  Timer1.setPeriod(Triggers[CurrentTrigger].Match);
  Timer1.attachInterrupt(PulseGenerator_Handler);
}

// updates the triggers for the pulse generator waveforms
// based on a specific engine speed and pulse angle
static void UpdatePulseGeneratorTriggers
  (
  int EngineSpeed,                                         // RPM
  int PulseAngle                                           // degrees of distributor rotation
  )
{
  float RotationsPerSec = EngineSpeed / 60.0F;
  float FiringCyclesPerSec = RotationsPerSec / 2;
  float FiringPeriod = 1 / FiringCyclesPerSec * 1000.0F;

  float DutyCycle = PulseAngle * 2.0F / 720.0F;
  float PulseLength = FiringPeriod * DutyCycle;

  // get group starts, 90 degrees out of phase
  float Group1Start = 0.0F;
  float Group2Start = FiringPeriod * 0.25F;
  float Group3Start = FiringPeriod * 0.5F;
  float Group4Start = FiringPeriod * 0.75F;

  float Group1End = Group1Start + PulseLength;
  if (Group1End > FiringPeriod) Group1End -= FiringPeriod;
  float Group2End = Group2Start + PulseLength;
  if (Group2End > FiringPeriod) Group2End -= FiringPeriod;
  float Group3End = Group3Start + PulseLength;
  if (Group3End > FiringPeriod) Group3End -= FiringPeriod;
  float Group4End = Group4Start + PulseLength;
  if (Group4End > FiringPeriod) Group4End -= FiringPeriod;

  // set up table of triggers
  // each trigger has a state and a relative time in microseconds
  Triggers[0].State = G1START;
  Triggers[0].Match = (int)((FiringPeriod - Group3End) * 1000.0);
  Triggers[1].State = G4END;
  Triggers[1].Match = (int)((Group4End - Group1Start) * 1000.0);
  Triggers[2].State = G2START;
  Triggers[2].Match = (int)((Group2Start - Group4End) * 1000.0);
  Triggers[3].State = G1END;
  Triggers[3].Match = (int)((Group1End - Group2Start) * 1000.0);
  Triggers[4].State = G3START;
  Triggers[4].Match = (int)((Group3Start - Group1End) * 1000.0);
  Triggers[5].State = G2END;
  Triggers[5].Match = (int)((Group2End - Group3Start) * 1000.0);
  Triggers[6].State = G4START;
  Triggers[6].Match = (int)((Group4Start - Group2End) * 1000.0);
  Triggers[7].State = G3END;
  Triggers[7].Match = (int)((Group3End - Group4Start) * 1000.0);
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
  bool *pCranking,                                         // cranking state
  int *pPulseAngle                                         // pulse angle for pulse generator in degrees
  )
{
  *pEngineSpeed       = EngineSpeed;
  *pCoolantTempF      = CoolantTempF;
  *pThrottlePosition  = ThrottlePosition;
  *pThrottleDirection = ThrottleDirection;
  *pPressure          = Pressure;
  *pAirTempF          = AirTempF;
  *pCranking          = Cranking;
  *pPulseAngle        = PulseAngle;
}

// sets the pulse generator pulse angle in degrees of distributor rotation
void Engine_SetPulseAngle
  (
  int NewPulseAngle                                        // degrees of rotation
  )
{
  PulseAngle = NewPulseAngle;
  if (PulseAngle < MIN_PULSEANGLE) PulseAngle = MIN_PULSEANGLE;
  if (PulseAngle > MAX_PULSEANGLE) PulseAngle = MAX_PULSEANGLE;

  // update calculations for pulse generation
  Engine_SetEngineSpeed(EngineSpeed);
}

// sets the engine speed
void Engine_SetEngineSpeed
  (
  int NewSpeed                                             // new speed in RPM
  )
{
  // stop pulse generation
  Timer1.stop();
  TRIGGERGROUP1_HIGH;
  TRIGGERGROUP2_HIGH;
  TRIGGERGROUP3_HIGH;
  TRIGGERGROUP4_HIGH;

  EngineSpeed = NewSpeed;

  if (EngineSpeed > 0)
  {
    UpdatePulseGeneratorTriggers(EngineSpeed, PulseAngle);

    // go to start of table
    CurrentTrigger = 0;

    // restart pulse generation
    Timer1.setPeriod(Triggers[0].Match);
    Timer1.start();
  }
}

// sets the air temperature
void Engine_SetAirTempF
  (
  int NewAirTempF                                          // new air temperature in F
  )
{
  if (NewAirTempF != AirTempF)
  {
    AirTempF = NewAirTempF;

    int R = AirTempSensor_GetResistance(AirTempF);
    if (R < AIRTEMP_MIN_R) R = AIRTEMP_MIN_R;
    if (R > AIRTEMP_MAX_R) R = AIRTEMP_MAX_R;

    R -= DIGITAL_POT_WIPER_R_AIR;

    int Wiper = (int)(R / AirRperW);
    if (Wiper > (DIGITAL_POT_RESOLUTION - 1)) Wiper = DIGITAL_POT_RESOLUTION - 1;
    if (Wiper < 0) Wiper = 0;

    AirTempPot->set(Wiper);
  }
}

// sets the coolant temperature 
void Engine_SetCoolantTempF
  (
  int NewCoolantTempF                                      // new coolant temperature in F
  )
{
  if (NewCoolantTempF != CoolantTempF)
  {
    CoolantTempF = NewCoolantTempF;

    int R = CoolantTempSensor_GetResistance(CoolantTempF);
    if (R < COOLANTTEMP_MIN_R) R = COOLANTTEMP_MIN_R;
    if (R > COOLANTTEMP_MAX_R) R = COOLANTTEMP_MAX_R;

    R -= DIGITAL_POT_WIPER_R_COOLANT;

    int Wiper = (int)(R / CoolantRperW);
    if (Wiper > (DIGITAL_POT_RESOLUTION - 1)) Wiper = DIGITAL_POT_RESOLUTION - 1;
    if (Wiper < 0) Wiper = 0;

    CoolantTempPot->set(Wiper);
  }
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
  else if (NewPressure == 0)
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

  Engine_Set(1400, 185, 17, THROTTLE_ACCELERATING, 11, false);
}

// sets the engine to cruising at 70 MPH
void Engine_Cruise70MPH
  (
  void  
  )
{
  Engine_Set(3000, 185, 25, THROTTLE_ACCELERATING, 11, false);
}

// sets the engine to gentle acceleration
void Engine_GentleAcceleration
  (
  void  
  )
{
  Engine_Set(1800, 185, 30, THROTTLE_ACCELERATING, 9, false);
}

// sets the engine to moderate acceleration
void Engine_ModerateAcceleration
  (
  void  
  )
{
  Engine_Set(3500, 185, 50, THROTTLE_ACCELERATING, 7, false);
}

// sets the engine to hard acceleration
void Engine_HardAcceleration
  (
  void  
  )
{
  Engine_Set(6000, 185, 95, THROTTLE_ACCELERATING, 2, false);
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
  // set up outputs
  pinMode(PIN_STATUS_LED,    OUTPUT);
  STATUS_LED_OFF;
  pinMode(PIN_START,         OUTPUT);
  NOTSTARTING;
  DIR_TRIGGERGROUP1 |= (1 << PIN_TRIGGERGROUP1);
  TRIGGERGROUP1_HIGH;
  DIR_TRIGGERGROUP2 |= (1 << PIN_TRIGGERGROUP2);
  TRIGGERGROUP2_HIGH;
  DIR_TRIGGERGROUP3 |= (1 << PIN_TRIGGERGROUP3);
  TRIGGERGROUP3_HIGH;
  DIR_TRIGGERGROUP4 |= (1 << PIN_TRIGGERGROUP4);
  TRIGGERGROUP4_HIGH;
  pinMode(PIN_TPSWOT,        OUTPUT);
  TPS_NOTWOT;
  pinMode(PIN_TPSIDLE,       OUTPUT);
  TPS_NOTIDLE;
  pinMode(PIN_TPSACCEL1,     OUTPUT);
  TPS_ACCEL1_DEASSERT;
  pinMode(PIN_TPSACCEL2,     OUTPUT);
  TPS_ACCEL2_DEASSERT;
  pinMode(PIN_VAC1,          OUTPUT);
  VAC1_DEASSERT;
  pinMode(PIN_VAC2,          OUTPUT);
  VAC2_DEASSERT;
  pinMode(PIN_AIRTEMPCS,     OUTPUT);
  AIRTEMPCS_DEASSERT;
  pinMode(PIN_COOLANTTEMPCS, OUTPUT);
  COOLANTTEMPCS_DEASSERT;
 
  AirTempSensor_Init();
  CoolantTempSensor_Init();

  AirTempPot     = new MCP4XXX(PIN_AIRTEMPCS);
  CoolantTempPot = new MCP4XXX(PIN_COOLANTTEMPCS);

  // calculate ratio of resistance (Ohms) per step in wiper position
  AirRperW     = (AIRTEMP_MAX_R - AIRTEMP_MIN_R)         / (float)DIGITAL_POT_RESOLUTION;
  CoolantRperW = (COOLANTTEMP_MAX_R - COOLANTTEMP_MIN_R) / (float)DIGITAL_POT_RESOLUTION;

  // set up pulse generator
  Timer1.initialize(0);
  Timer1.attachInterrupt(PulseGenerator_Handler);
  Timer1.stop();

  PulseAngle = DEFAULT_PULSEANGLE;

  Engine_Off();
  Engine_SetAirTempF(DEFAULT_AIRTEMPF);

  LEDTimestamp = GetTime() + LED_FLASH_PERIOD_ENGINEOFF;
}

// call repeatedly to implement the engine simulation
void Engine_Process
  (
  void
  )
{
  // flash status LED to show we are alive
  if (IsTimeExpired(LEDTimestamp))
  {
    if (IS_STATUS_LED_ON)
    {
      STATUS_LED_OFF;
    }
    else
    {
      STATUS_LED_ON;
    }
    
    if (IS_ENGINE_ON)
    {
      LEDTimestamp = GetTime() + LED_FLASH_PERIOD_ENGINEON;
    }
    else
    {
      LEDTimestamp = GetTime() + LED_FLASH_PERIOD_ENGINEOFF;
    }
  }
}
