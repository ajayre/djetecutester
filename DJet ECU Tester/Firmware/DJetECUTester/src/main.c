#include <Arduino.h>
#include "Engine.h"

void setup() {
  Engine_Init();
}

void loop() {
  Engine_Process();
}
