// Mercedes V8 DJet Engine Simulator
// (C) andy@britishideas.com 2021

#include <Arduino.h>
#include "Engine.h"

#define VERSION 1

#define BAUDRATE 57600

#define MAX_INPUTBUFFER_SIZE 10

#define CHAR_LF 10
#define CHAR_CR 13

#define MENU_TOP_LEVEL        0
#define MENU_SHOW_SETTINGS    1
#define MENU_COLD_IDLE        2
#define MENU_HOT_IDLE         3
#define MENU_CRUISE_30MPH     4
#define MENU_CRUISE_70MPH     5
#define MENU_GENTLE_ACCEL     6
#define MENU_MODERATE_ACCEL   7
#define MENU_HARD_ACCEL       8
#define MENU_SET_COOLANT_TEMP 9
#define MENU_SET_AIR_TEMP     10
#define MENU_SET_ENGINE_SPEED 11
#define MENU_SET_THROTTLE     12
#define MENU_SET_CSV          13
#define MENU_SET_THROTTLE2    100

// limits
#define MIN_COOLANT_TEMP      0
#define MAX_COOLANT_TEMP      250
#define MIN_AIR_TEMP          0
#define MAX_AIR_TEMP          120
#define MIN_ENGINE_SPEED      500
#define MAX_ENGINE_SPEED      6500
#define MIN_THROTTLE_POSITION 0
#define MAX_THROTTLE_POSITION 100

static char InputBuffer[MAX_INPUTBUFFER_SIZE];
static int InputBufferIdx = 0;
static int CurrentMenuLevel = MENU_TOP_LEVEL;
static int ThrottlePos;

// shows the banner
static void ShowBanner
  (
  void
  )
{
  Serial.println(F("Mercedes V8 DJet ECU Tester"));
  Serial.print(F("Version "));
  Serial.println(VERSION);
  Serial.println(F("(C) andy@britishideas.com 2021"));
  Serial.println();
}

// show the current menu to the user
static void ShowMenu
  (
  )
{
  switch (CurrentMenuLevel)
  {
    case MENU_TOP_LEVEL:
      Serial.println();
      Serial.println(F("MAIN MENU"));
      Serial.println(F("   1. Show current settings"));
      Serial.println(F("Presets:"));
      Serial.println(F("   2. Cold idle"));
      Serial.println(F("   3. Hot idle"));
      Serial.println(F("   4. Cruise 30MPH"));
      Serial.println(F("   5. Cruise 70MPH"));
      Serial.println(F("   6. Gentle acceleration"));
      Serial.println(F("   7. Moderate acceleration"));
      Serial.println(F("   8. Hard acceleration"));
      Serial.println(F("Customize:"));
      Serial.println(F("   9. Set coolant temp"));
      Serial.println(F("  10. Set air temp"));
      Serial.println(F("  11. Set engine speed"));
      Serial.println(F("  12. Set throttle"));
      Serial.println(F("  13. Set Cold Start Valve"));
      Serial.println();
      Serial.println(F("Enter a number and press Enter:"));
      break;

    case MENU_SET_COOLANT_TEMP:
      Serial.print(F("Enter new coolant temp in deg F ("));
      Serial.print(MIN_COOLANT_TEMP);
      Serial.print(F("-"));
      Serial.print(MAX_COOLANT_TEMP);
      Serial.print(F("):"));
      break;
    
    case MENU_SET_AIR_TEMP:
      Serial.print(F("Enter new air temp in deg F ("));
      Serial.print(MIN_AIR_TEMP);
      Serial.print(F("-"));
      Serial.print(MAX_AIR_TEMP);
      Serial.print(F("):"));
      break;

    case MENU_SET_ENGINE_SPEED:
      Serial.print(F("Enter new engine speed in RPM ("));
      Serial.print(MIN_ENGINE_SPEED);
      Serial.print(F("-"));
      Serial.print(MAX_ENGINE_SPEED);
      Serial.print(F("):"));
      break;

    case MENU_SET_THROTTLE:
      Serial.print(F("Enter new throttle position ("));
      Serial.print(MIN_THROTTLE_POSITION);
      Serial.print(F("-"));
      Serial.print(MAX_THROTTLE_POSITION);
      Serial.print(F("):"));
      break;

    case MENU_SET_THROTTLE2:
      Serial.print(F("Enter new throttle direction (U or D):"));
      break;

    case MENU_SET_CSV:
      Serial.print(F("Enter new cold start valve position (O or C):"));
      break;
  }
}

// shows the current settings
static void ShowSettings
  (
  void  
  )
{
  Serial.println();

  // get current engine parameters
  int EngineSpeed;
  int CoolantTempF;
  int ThrottlePosition;
  throttledirection_t ThrottleDirection;
  int Pressure;
  coldstartvalve_t ColdStartValve;
  int AirTempF;
  Engine_Get(&EngineSpeed, &CoolantTempF, &ThrottlePosition, &ThrottleDirection, &Pressure, &ColdStartValve, &AirTempF);

  Serial.print(F("Settings: airtemp="));
  Serial.print(AirTempF);
  Serial.print(F(", coolanttemp="));
  Serial.print(CoolantTempF);
  Serial.print(F(", throttlepos="));
  Serial.print(ThrottlePosition);
  Serial.print(F(", throttledir="));
  switch (ThrottleDirection)
  {
    default:
    case THROTTLE_NONE:         Serial.print(F("none"));  break;
    case THROTTLE_ACCELERATING: Serial.print(F("accel")); break;
    case THROTTLE_DECELERATING: Serial.print(F("decel")); break;
  }
  Serial.print(F(", engspeed="));
  Serial.print(EngineSpeed);
  Serial.print(F(", csv="));
  Serial.println(ColdStartValve == CSV_OPEN ? F("open") : F("closed"));
}

// executes a top level menu item
static void Execute_Top_Level_Menu_Item
  (
  int ItemNumber                                           // menu item number
  )
{
  switch (ItemNumber)
  {
    case MENU_SHOW_SETTINGS:
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_COLD_IDLE:
      Engine_ColdIdle();
      Serial.println(F("Set to cold idle"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;
    
    case MENU_HOT_IDLE:
      Engine_HotIdle();
      Serial.println(F("Set to hot idle"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_CRUISE_30MPH:
      Engine_Cruise30MPH();
      Serial.println(F("Set to cruise at 30MPH"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_CRUISE_70MPH:
      Engine_Cruise70MPH();
      Serial.println(F("Set to cruise at 70MPH"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_GENTLE_ACCEL:
      Engine_GentleAcceleration();
      Serial.println(F("Set to gentle acceleration"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_MODERATE_ACCEL:
      Engine_ModerateAcceleration();
      Serial.println(F("Set to moderate acceleration"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_HARD_ACCEL:
      Engine_HardAcceleration();
      Serial.println(F("Set to hard acceleration"));
      ShowSettings();
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case MENU_SET_COOLANT_TEMP:
    case MENU_SET_AIR_TEMP:
    case MENU_SET_ENGINE_SPEED:
    case MENU_SET_THROTTLE:
    case MENU_SET_CSV:
      CurrentMenuLevel = ItemNumber;
      ShowMenu();
      break;

    default:
      Serial.println(F("ERROR: Invalid input"));
      ShowMenu();
  }
}

// processes the input gived by the user
static void Process_User_Input
  (
  char *Input                                              // null terminated input string
  )
{
  switch (CurrentMenuLevel)
  {
    case MENU_SET_COOLANT_TEMP:
      {
        int CoolantTemp = atol(Input);
        if (CoolantTemp < MIN_COOLANT_TEMP || CoolantTemp > MAX_COOLANT_TEMP)
        {
          Serial.println();
          Serial.println();
          Serial.println(F("ERROR: Entered value is outside of allowed range"));
        }
        else
        {
          Engine_SetCoolantTempF(CoolantTemp);
          Serial.println(F("Coolant temperature set"));
          ShowSettings();
        }
        CurrentMenuLevel = MENU_TOP_LEVEL;
        ShowMenu();
      }
      break;

    case MENU_SET_AIR_TEMP:
      {
        int AirTemp = atol(Input);
        if (AirTemp < MIN_AIR_TEMP || AirTemp > MAX_AIR_TEMP)
        {
          Serial.println();
          Serial.println();
          Serial.println(F("ERROR: Entered value is outside of allowed range"));
        }
        else
        {
          Engine_SetAirTempF(AirTemp);
          Serial.println(F("Air temperature set"));
          ShowSettings();
        }
        CurrentMenuLevel = MENU_TOP_LEVEL;
        ShowMenu();
      }
      break;

    case MENU_SET_ENGINE_SPEED:
      {
        int EngineSpeed = atol(Input);
        if (EngineSpeed < MIN_ENGINE_SPEED || EngineSpeed > MAX_ENGINE_SPEED)
        {
          Serial.println();
          Serial.println();
          Serial.println(F("ERROR: Entered value is outside of allowed range"));
        }
        else
        {
          Engine_SetEngineSpeed(EngineSpeed);
          Serial.println(F("Engine speed set"));
          ShowSettings();
        }
        CurrentMenuLevel = MENU_TOP_LEVEL;
        ShowMenu();
      }
      break;

    case MENU_SET_THROTTLE:
      {
        ThrottlePos = atol(Input);
        if (ThrottlePos < MIN_THROTTLE_POSITION || ThrottlePos > MAX_THROTTLE_POSITION)
        {
          Serial.println();
          Serial.println();
          Serial.println(F("ERROR: Entered value is outside of allowed range"));
        
          CurrentMenuLevel = MENU_TOP_LEVEL;
          ShowMenu();
        }
        else
        {
          CurrentMenuLevel = MENU_SET_THROTTLE2;
          ShowMenu();
        }
      }
      break;

    case MENU_SET_THROTTLE2:
      {
        bool Accel = false;
        if ((Input[0] == 'U') || (Input[0] == 'u'))
        {
          Accel = true;
        }

        Engine_SetThrottle(ThrottlePos, Accel ? THROTTLE_ACCELERATING : THROTTLE_DECELERATING);
        Serial.println(F("Throttle position and direction set"));
        ShowSettings();

        CurrentMenuLevel = MENU_TOP_LEVEL;
        ShowMenu();
      }
      break;

    case MENU_SET_CSV:
      {
        bool Open = false;
        if ((Input[0] == 'O') || (Input[0] == 'o'))
        {
          Open = true;
        }

        Engine_SetColdStartValve(Open ? CSV_OPEN : CSV_CLOSED);
        Serial.println(F("Cold Start Valve position set"));
        ShowSettings();

        CurrentMenuLevel = MENU_TOP_LEVEL;
        ShowMenu();
      }
      break;
  }
}

void setup() {
  // start serial output
  Serial.begin(BAUDRATE);
  while (!Serial) delay(1);
  Serial.flush();

  ShowBanner();

  Engine_Init();
  Serial.println(F("Engine is off"));

  CurrentMenuLevel = MENU_TOP_LEVEL;
  ShowMenu();
}

void loop() {
  Engine_Process();

  // if key pressed
  if (Serial.peek() != -1)
  {
    // get next char
    int InChar = Serial.read();

    // echo back
    Serial.print((char)InChar);

    if (InChar != CHAR_LF)
    {
      // if enter pressed then process input
      if (InChar >= '0')
      {
        // store in buffer
        InputBuffer[InputBufferIdx++] = InChar;
        if (InputBufferIdx == MAX_INPUTBUFFER_SIZE - 1) InputBufferIdx = 0;
      }
      else
      {
        Serial.flush();
        InputBuffer[InputBufferIdx] = 0;
        InputBufferIdx = 0;

        // no choice made, show top level menu
        if (InputBuffer[0] == 0)
        {
          ShowBanner();
          CurrentMenuLevel = MENU_TOP_LEVEL;
          ShowMenu();
        }
        // user made choice from top level menu
        else if (CurrentMenuLevel == MENU_TOP_LEVEL)
        {
          int MenuChoice = atoi(InputBuffer);
          Execute_Top_Level_Menu_Item(MenuChoice);
        }
        else
        {
          Process_User_Input(InputBuffer);
        }
      }
    }
  }
}
