require 'pry'
require 'pry-byebug'

class Thermostat

  attr_accessor :temperature 

  #instance factory!!!
  def initialize(temperature)
    @temperature = temperature 
  end

  #instance method 
  def get_desired_temperature(target_temp)
    if temperature > target_temp
      turn_off_heater(temperature)
    elsif temperature < target_temp
      turn_on_heater(temperature)
    else
      puts "Just Right!"
    end
  end
  ####

  #class method  
  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
      reading = Thermostat.new(temp)
      reading.get_desired_temperature(target_temp)
    end
  end

 private 
  def turn_on_heater(temperature)
    puts "Too Cold"
  end

  def turn_off_heater(temperature)
    puts "Too Hot"
  end

end


#The temperature is being read externally somewhere, so let's just create an array of those readings 
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22] 

#set by user 
target_temp = 75

#class method called to get this party started!!!
Thermostat.detect_temperature(all_temps, target_temp)








