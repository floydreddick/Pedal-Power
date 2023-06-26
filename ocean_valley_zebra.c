#include <stdio.h>
#include <stdlib.h>

//Create enum type for the available power levels
enum PowerLevels {
 Low,
 Medium,
 High
};

//Structure to store the pedaling power
struct PedalPower
{
 int lowPower;
 int mediumPower;
 int highPower;
};

//Function to set the pedal power based on the user input
void setPowerLevel(struct PedalPower *pedalPower, enum PowerLevels powerLevel)
{
 switch (powerLevel) 
 {
  case Low:
   pedalPower->lowPower = 1;
   pedalPower->mediumPower = 0;
   pedalPower->highPower = 0;
   break;
  case Medium:
   pedalPower->lowPower = 0;
   pedalPower->mediumPower = 1;
   pedalPower->highPower = 0;
   break;
  case High:
   pedalPower->lowPower = 0;
   pedalPower->mediumPower = 0;
   pedalPower->highPower = 1;
   break;
 }
}

//Function to print the current power levels
void printPowerLevels (struct PedalPower pedalPower)
{
 printf("Low Power: %d\n", pedalPower.lowPower);
 printf("Medium Power: %d\n", pedalPower.mediumPower);
 printf("High Power: %d\n", pedalPower.highPower);
 printf("\n");
}

//Function to increase the current power level
void increasePowerLevel (struct PedalPower *pedalPower, enum PowerLevels powerLevel)
{
 switch (powerLevel) 
 {
  case Low:
   pedalPower->lowPower += 1;
   break;
  case Medium:
   pedalPower->mediumPower += 1;
   break;
  case High:
   pedalPower->highPower += 1;
   break;
 }
}

//Function to decrease the current power level
void decreasePowerLevel (struct PedalPower *pedalPower, enum PowerLevels powerLevel)
{
 switch (powerLevel) 
 {
  case Low:
   pedalPower->lowPower -= 1;
   break;
  case Medium:
   pedalPower->mediumPower -= 1;
   break;
  case High:
   pedalPower->highPower -= 1;
   break;
 }
}

int main()
{
 //Create PedalPower structure
 struct PedalPower pedalPower1;
 
 //Set the power levels
 setPowerLevel(&pedalPower1, Low);
 
 //Print the power levels
 printPowerLevels(pedalPower1);
 
 //Increase the power levels
 increasePowerLevel(&pedalPower1, Low);
 
 //Print the power levels
 printPowerLevels(pedalPower1);
 
 //Decrease the power levels
 decreasePowerLevel(&pedalPower1, Low);
 
 //Print the power levels
 printPowerLevels(pedalPower1);
 
 return 0;
}