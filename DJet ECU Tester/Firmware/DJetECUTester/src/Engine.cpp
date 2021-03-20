// Mercedes V8 DJet Engine Simulator
// (C) andy@britishideas.com 2021

#include <Arduino.h>
#include "Engine.h"

// special value to indicate no manifold pressure required
#define NO_PRESSURE -1

static int EngineSpeed;                                    // RPM
static int AirTempF;
static int CoolantTempF;
static int ThrottlePosition;                               // %
static throttledirection_t ThrottleDirection;
static int Pressure;                                       // manifold, inHg

// set new engine parameters
void Engine_Set
  (
  int EngineSpeed,                                         // new speed in RPM
  int CoolantTempF,                                        // new coolant temperature in F
  int ThrottlePosition,                                    // new throttle position 0% -> 100%
  throttledirection_t ThrottleDirection,                   // new throttle direction
  int Pressure                                             // new manifold pressure
  )
{
  Engine_SetEngineSpeed(EngineSpeed);
  Engine_SetCoolantTempF(CoolantTempF);
  Engine_SetThrottle(ThrottlePosition, ThrottleDirection);
  Engine_SetManifoldPressure(Pressure);
}

// get current engine parameters
void Engine_Get
  (
  int *pEngineSpeed,                                       // speed in RPM
  int *pCoolantTempF,                                      // coolant temperature in F
  int *pThrottlePosition,                                  // throttle position 0% -> 100%
  throttledirection_t *pThrottleDirection,                 // throttle direction
  int *pPressure,                                          // manifold pressure
  int *pAirTempF                                           // air temperature
  )
{
  *pEngineSpeed = EngineSpeed;
  *pCoolantTempF = CoolantTempF;
  *pThrottlePosition = ThrottlePosition;
  *pThrottleDirection = ThrottleDirection;
  *pPressure = Pressure;
  *pAirTempF = AirTempF;
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
}

// sets the new pressure level from the manifold
void Engine_SetManifoldPressure
  (
  int NewPressure                                          // new pressure level in inHg
  )
{
  Pressure = NewPressure;

  if (Pressure != NO_PRESSURE)
  {
    Serial.print(F("ACTION: MANUALLT SET PRESSURE TO "));
    Serial.print(Pressure);
    Serial.println(F(" INHG"));
  }
}

// sets the engine to cold idle state
void Engine_ColdIdle
  (
  void  
  )
{
  Engine_Set(1200, 72, 0, THROTTLE_NONE, 15);
}

// sets the engine to hot idle state
void Engine_HotIdle
  (
  void  
  )
{
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15);
}

// sets the engine to cruising at 30 MPH
void Engine_Cruise30MPH
  (
  void  
  )
{
  // fixme = to do
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15);
}

// sets the engine to cruising at 70 MPH
void Engine_Cruise70MPH
  (
  void  
  )
{
  // fixme = to do
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15);
}

// sets the engine to gentle acceleration
void Engine_GentleAcceleration
  (
  void  
  )
{
  // fixme = to do
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15);
}

// sets the engine to moderate acceleration
void Engine_ModerateAcceleration
  (
  void  
  )
{
  // fixme = to do
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15);
}

// sets the engine to hard acceleration
void Engine_HardAcceleration
  (
  void  
  )
{
  // fixme = to do
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15);
}

// turns the engine off
void Engine_Off
  (
  void  
  )
{
  Engine_Set(0, 0, 0, THROTTLE_NONE, NO_PRESSURE);
}

// initializes engine simulation
void Engine_Init
   (
   void
   )
{
  Engine_Off();

  AirTempF = 72;

  // fixme - to do - set CSV output low
}

// call repeatedly to implement the engine simulation
void Engine_Process
  (
  void
  )
{
}
