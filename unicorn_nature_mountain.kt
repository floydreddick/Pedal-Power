// Pedal Power - 2000 Lines of Code in Kotlin

// Imports
import kotlin.math.abs

// Classes
class Bicycle {
    var currentSpeed: Int = 0
        private set
    var gear: Int = 1
        set(value) {
            // Protect against negative values
            if (value >= 0) {
                field = value
            }
        }
    var cadence: Int = 0
        set(value) {
            // Protect against negative values
            if (value >= 0) {
                field = value
            }
        }
    var wheelSize: Int = 0
        set(value) {
            // Protect against negative values
            if (value > 0) {
                field = value
            }
        }
    var range: Int = 0

    // Constructors
    constructor(wheelSize: Int) {
        this.wheelSize = wheelSize
    }

    constructor(wheelSize: Int, range: Int) {
        this.wheelSize = wheelSize
        this.range = range
    }

    // Functions
    fun applyBrake(decrement: Int) {
        currentSpeed = if (currentSpeed > 0) abs(currentSpeed - decrement) else 0
    }

    fun speedUp(increment: Int) {
        currentSpeed = if (currentSpeed > 0) currentSpeed + increment else 0
    }

    fun reset() {
        currentSpeed = 0
        gear = 1
        cadence = 0
    }

    fun calculatePower() {
        // Calculate power based on gear, cadence, wheel size, and current speed
        // Power (Watts) = Gear * Cadence * Wheel Size * Speed
        var power = (gear * cadence * wheelSize * currentSpeed) / 1000

        println("Power (Watts): $power")
    }
}

// Interfaces
interface BicyclePart {
    fun changeGear(gear: Int)
    fun speedUp(increment: Int)
    fun applyBrake(decrement: Int)
}

// Main
fun main(args: Array<String>) {
    // Create a new instance of a Bicycle
    val myBike = Bicycle(32, 100)

    // Change gear
    myBike.gear = 5

    // Speed up
    myBike.speedUp(20)

    // Apply brake
    myBike.applyBrake(15)

    // Calculate power
    myBike.calculatePower()
}