#include <Arduino.h>
#include "Engine.h"

#define VERSION 1

#define BAUDRATE 57600

#define MAX_INPUTBUFFER_SIZE 10

#define CHAR_LF 10
#define CHAR_CR 13

#define MENU_TOP_LEVEL 0

static char InputBuffer[MAX_INPUTBUFFER_SIZE];
static int InputBufferIdx = 0;
static int CurrentMenuLevel = MENU_TOP_LEVEL;

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
      Serial.println(F("  1. Show current settings"));
      Serial.println(F("Presets:"));
      Serial.println(F("  2. Cold idle"));
      Serial.println(F("  3. Hot idle"));
      Serial.println(F("Customize:"));
      Serial.println(F("  4. Set coolant temp"));
      Serial.println();
      Serial.println(F("Enter a number and press Enter:"));
      break;

    case 4:
      Serial.println(F("Enter new coolant temp in deg F (0-250):"));
      break;
  }
}

// executes a top level menu item
static void Execute_Top_Level_Menu_Item
  (
  int ItemNumber                                           // menu item number
  )
{
  switch (ItemNumber)
  {
    case 1:
      Serial.println();
      Serial.println("<settings>"); // fixme - to do
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;

    case 4:
      CurrentMenuLevel = 4;
      ShowMenu();
      break;
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
    case 4:
      Serial.print("New coolant temp: ");
      Serial.println(Input);
      CurrentMenuLevel = MENU_TOP_LEVEL;
      ShowMenu();
      break;
  }
}

void setup() {
  // start serial output
  Serial.begin(BAUDRATE);
  while (!Serial) delay(1);
  Serial.flush();

  Serial.println(F("Mercedes V8 Bosch DJet ECU Tester"));
  Serial.print(F("Version "));
  Serial.println(VERSION);
  Serial.println(F("(C) andy@britishideas.com 2021"));
  Serial.println();

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

    if (InChar != CHAR_LF)
    {
      // echo back
      Serial.print((char)InChar);

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
