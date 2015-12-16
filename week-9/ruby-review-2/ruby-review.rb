# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

# Car attributes:
#  model
#  color
#  speed
#  mileage
#  last_action
# Car methods:
#  turn
#  accelerate
#  stop
#  return last action
#  drive

# CREATE new Car
#  REQUIRE model, color (as strings)
#  INITIALIZE Car
#    instance variables for model, color = inputs
#    mileage = 0
#    speed = 0
#    last_Action = "created"

# TURN method
#  REQUIRES string ("left", "right") input
#  SET last_action = turn + direction

# ACCELERATE method
#  REQUIRES input of final speed (integer)
#  SET speed to input
#  SET last_action to "accelerated to" + final speed

# RETURN LAST ACTION method
#  return last_action

# DRIVE method
#  REQUIRES distance to drive, speed limit (integers)
#  ADD distance to mileage
#  CALL accelerate method with speed limit
#  SET last_action to "Drove...."

# STOP method
#  CALL accelerate, speed limit 0
#  SET last_action to "Stopped..."

# 3. Initial Solution

# class Car
  
#   def initialize(model, color)
#     @model = model
#     @color = color
#     @mileage = 0
#     @speed = 0
#     @last_action ='Car Created'
#     @pizza_heater = []
#   end
  
#   def turn(direction)
#     @last_action = "Turn " + direction + "."
#   end
  
#   def accelerate(final_speed)
    
#     if final_speed > @speed
#       @last_action = "Accelerated to #{final_speed}."
#     else
#       @last_action = "Decelerated to #{final_speed}."
#     end
      
#     @speed = final_speed
    
#   end
  
#   def return_last_action
#     @last_action
#   end
  
#   def drive(distance, speed_limit)
    
#     @mileage += distance
    
#     accelerate(speed_limit)
    
#     @last_action = "Drove #{distance} miles at #{speed_limit} MPH."
    
#   end
  
#   def stop
    
#     accelerate(0)
    
#     @last_action = "Stopped."
    
#   end
  
#   def total_distance
    
#     "Total distance driven is #{@mileage}."
    
#   end
  
#   def check_speed
    
#     @speed
    
#   end
  
#   def add_pizza(pizza)
#     @pizza_heater << pizza
    
#     p @pizza_heater
#   end
  
#   def deliver_pizza
#     @pizza_heater.shift.delivered
    
#     p @pizza_heater
#   end
    
# end


# class Pizza
  
#   def initialize(size, crust, topping)
#     @size = size
#     @crust = crust
#     @topping = topping
#     @delivered = false
#   end
  
#   def delivered
#     @delivered = true
#     p "Pizza delivered!"
#   end
  
#   def delivered?
#     @delivered
#   end
  
# end
# 4. Refactored Solution
class Car
  
  def initialize(model, color)
    @model = model
    @color = color
    @mileage = 0
    @speed = 0
    @last_action ='Car Created'
    @pizza_heater = []
  end
  
  def turn(direction)
    @last_action = "Turn " + direction + "."
  end
  
  def accelerate(final_speed)
    
    if final_speed > @speed
      @last_action = "Accelerated to #{final_speed}."
    else
      @last_action = "Decelerated to #{final_speed}."
    end
      
    @speed = final_speed
    
  end
  
  attr_reader :last_action, :speed
  
  def drive(distance, speed_limit)
    @mileage += distance
    accelerate(speed_limit)
    @last_action = "Drove #{distance} miles at #{speed_limit} MPH."
  end
  
  def stop
    accelerate(0)  
    @last_action = "Stopped."
  end
  
  def total_distance
    "Total distance driven is #{@mileage}."
  end
  
  
  def add_pizza(pizza)
    @pizza_heater << pizza
  end
  
  def deliver_pizza
    @pizza_heater.shift.delivered
  end
    
end


class Pizza
  
  def initialize(size, crust, topping)
    @size = size
    @crust = crust
    @topping = topping
    @delivered = false
  end
  
  def delivered
    @delivered = true
    p "Pizza delivered!"
  end
  
  def delivered?
    @delivered
  end
  
end




# 1. DRIVER TESTS GO BELOW THIS LINE

roadster = Car.new('Mustang', 'red')
pizza1 = Pizza.new('large', 'thin', 'mushrooms')
roadster.add_pizza(pizza1)
roadster.drive(0.25,25);
roadster.stop
roadster.turn("right")
roadster.drive(1.5,35)
p roadster.speed
roadster.accelerate(15)
roadster.drive(0.25,15)
roadster.stop
roadster.turn("left")
roadster.drive(1.4,35)
roadster.stop
roadster.deliver_pizza
p roadster.last_action
p roadster.total_distance




# 5. Reflection