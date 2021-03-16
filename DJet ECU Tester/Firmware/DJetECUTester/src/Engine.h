// M117 D-Jet engine simulation

#ifndef _ENGINEH_
#define _ENGINEH_

typedef enum _throttledirection
{
  THROTTLE_NONE,
  THROTTLE_ACCELERATING,
  THROTTLE_DECELERATING
} throttledirection_t;

typedef enum _coldstartvalve
{
  CSV_CLOSED,
  CSV_OPEN
} coldstartvalve_t;

// initializes engine simulation
// initially cold idle
extern void Engine_Init
   (
   void
   );

// call repeatedly to implement the engine simulation
extern void Engine_Process
  (
  void
  );

// sets the engine speed
extern void Engine_SetEngineSpeed
  (
  int NewSpeed                                             // new speed in RPM
  );

// sets the air temperature
extern void Engine_SetAirTempF
  (
  int NewAirTempF                                          // new air temperature in F
  );

// sets the coolant temperature 
extern void Engine_SetCoolantTempF
  (
  int NewCoolantTempF                                      // new coolant temperature in F
  );

// sets the throttle position
extern void Engine_SetThrottlePosition
  (
  int NewThrottlePosition                                  // new throttle position 0% -> 100%
  );

// sets the throttle direction
extern void Engine_SetThrottleDirection
  (
  throttledirection_t NewThrottleDirection                 // new throttle direction
  );

// sets the new vacuum level from the manifold
extern void Engine_SetVacuum
  (
  int NewVacuum                                            // new vacuum level in in Hg
  );

// sets the new cold start value position
extern void Engine_SetColdStartValve
  (
  coldstartvalve_t NewColdStartValve                       // new cold start valve position
  );

// set new engine parameters
extern void Engine_Set
  (
  int EngineSpeed,                                         // new speed in RPM
  int CoolantTempF,                                        // new coolant temperature in F
  int ThrottlePosition,                                    // new throttle position 0% -> 100%
  throttledirection_t ThrottleDirection,                   // new throttle direction
  int Vacuum,                                              // new manifold vacuum
  coldstartvalve_t ColdStartValve                          // new cold start valve position
  );

// sets the engine to cold idle state
extern void Engine_ColdIdle
  (
  void  
  );

// sets the engine to hot idle state
extern void Engine_Hotidle
  (
  void  
  );

#endif // _ENGINEH_
