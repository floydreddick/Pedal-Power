#include <stdio.h>

int main() {

    int power, torque, gear, current_gear; 
    double wheel_torque, crank_torque, crank_power; 

    printf("Input power in watts: ");
    scanf("%d", &power);
    printf("Input torque in Newton-meters: ");
    scanf("%d", &torque);
    printf("Input number of gears on the bike: ");
    scanf("%d", &gear);
    printf("Input current gear: ");
    scanf("%d", &current_gear);

    wheel_torque = torque * current_gear/gear;
    crank_torque = wheel_torque * 2;
    crank_power = crank_torque * power;

    printf("The pedal power is %.2f watts.\n", crank_power);

    return 0;
}