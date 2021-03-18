// M117 D-Jet engine simulation

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
static coldstartvalve_t ColdStartValve;

// set new engine parameters
void Engine_Set
  (
  int EngineSpeed,                                         // new speed in RPM
  int CoolantTempF,                                        // new coolant temperature in F
  int ThrottlePosition,                                    // new throttle position 0% -> 100%
  throttledirection_t ThrottleDirection,                   // new throttle direction
  int Pressure,                                            // new manifold pressure
  coldstartvalve_t ColdStartValve                          // new cold start valve position
  )
{
  Engine_SetEngineSpeed(EngineSpeed);
  Engine_SetCoolantTempF(CoolantTempF);
  Engine_SetThrottleDirection(ThrottleDirection);
  Engine_SetThrottlePosition(ThrottlePosition);
  Engine_SetManifoldPressure(Pressure);
  Engine_SetColdStartValve(ColdStartValve);
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

// sets the throttle position
void Engine_SetThrottlePosition
  (
  int NewThrottlePosition                                  // new throttle position 0% -> 100%
  )
{
  ThrottlePosition = NewThrottlePosition;
}

// sets the throttle direction
void Engine_SetThrottleDirection
  (
  throttledirection_t NewThrottleDirection                 // new throttle direction
  )
{
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
    Serial.print(F("ACTION: Manually set pressure to "));
    Serial.print(Pressure);
    Serial.println(F(" inHg"));
  }
}

// sets the new cold start value position
void Engine_SetColdStartValve
  (
  coldstartvalve_t NewColdStartValve                       // new cold start valve position
  )
{
  ColdStartValve = NewColdStartValve;
}

// sets the engine to cold idle state
void Engine_ColdIdle
  (
  void  
  )
{
  Engine_Set(1200, 72, 0, THROTTLE_NONE, 15, CSV_CLOSED); // fixme - csv correct?
}

// sets the engine to hot idle state
void Engine_Hotidle
  (
  void  
  )
{
  Engine_Set(700, 185, 0, THROTTLE_NONE, 15, CSV_OPEN);  // fixme - csv correct?
}

// turns the engine off
void Engine_Off
  (
  void  
  )
{
  Engine_Set(0, 0, 0, THROTTLE_NONE, NO_PRESSURE, CSV_OPEN);  // fixme - csv correct?
}

// initializes engine simulation
void Engine_Init
   (
   void
   )
{
  Engine_Off();

  AirTempF = 72;
}

// call repeatedly to implement the engine simulation
void Engine_Process
  (
  void
  )
{
}
