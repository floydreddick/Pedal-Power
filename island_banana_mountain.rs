// Defining necessary constants 
const MAX_SPEED: u32 = 20; 
const MAX_PEDAL_POWER: u32 = 2000;

// Defining necessary variables 
let mut speed: u32 = 0;
let mut pedal_power: u32 = 0;

// This loop will keep running while the pedal power is less than the max pedal power. 
while pedal_power < MAX_PEDAL_POWER {

    // This loop will keep running while the speed is less than the max speed.
    while speed < MAX_SPEED {
        // Increase the speed
        speed += 1;

        // Increase the pedal power
        pedal_power += (speed * speed);
    }

    // Reset the speed
    speed = 0;
}

// Print the final pedal power
println!("The final pedal power is: {}", pedal_power);