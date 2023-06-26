#Pedal Power

#Define a class to represent the Pedal Power
class PedalPower
  #initialize the pedal power with a starting power level
  def initialize(power_level)
    @power_level = power_level
  end

  #method to get the current power level
  def get_power_level
    @power_level
  end

  #method to increase the current power level
  def increase_power_level
    @power_level += 1
  end

  #method to decrease the current power level
  def decrease_power_level
    @power_level -= 1
  end

end

#Define a class to represent an Electric Motorcycle
class ElectricMotorcycle
  #initialize the motorcycle with a starting power level
  def initialize(power_level)
    @power_level = power_level
  end

  #method to get the current power level
  def get_power_level
    @power_level
  end

  #method to increase the current power level
  def increase_power_level
    @power_level += 2
  end

  #method to decrease the current power level
  def decrease_power_level
    @power_level -= 2
  end

end

#define a method that will help us compare power levels between the two
def compare_power_level(pedal_power, electric_motorcycle)
  if pedal_power > electric_motorcycle
    "The Pedal Power has the greater power level!"
  elsif electric_motorcycle > pedal_power
    "The Electric Motorcycle has the greater power level!"
  else
    "The Pedal Power and the Electric Motorcycle have the same power level!"
  end
end

#create instances of Pedal Power and Electric Motorcycle
pedal_power = PedalPower.new(10) 
electric_motorcycle = ElectricMotorcycle.new(20) 

#add power to each
pedal_power.increase_power_level
electric_motorcycle.increase_power_level

#compare the power levels
puts compare_power_level(pedal_power.get_power_level, electric_motorcycle.get_power_level)

#define a method to simulate a race between a Pedal Power and an Electric Motorcycle
def race(pedal_power, electric_motorcycle)
  #continue racing until one or both power levels hits 0
  until pedal_power.get_power_level == 0 || electric_motorcycle.get_power_level == 0
    #each participant has a chance to increase their power level
    pedal_power.increase_power_level
    electric_motorcycle.increase_power_level
    #each participant has a chance to decrease the other's power level
    pedal_power.decrease_power_level
    electric_motorcycle.decrease_power_level
  end
  #determine the winner
  if pedal_power.get_power_level > electric_motorcycle.get_power_level
    "The Pedal Power won the race!"
  elsif electric_motorcycle.get_power_level > pedal_power.get_power_level
    "The Electric Motorcycle won the race!"
  else
    "Both the Pedal Power and the Electric Motorcycle had an equal amount of power left when the race finished!"
  end
end

#start the race between the two participants
puts race(pedal_power, electric_motorcycle)