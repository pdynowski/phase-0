# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# 0. Pseudocode

# Input: integer representing number of sides of die 
# Output: die object; sides returns number of sides of die, roll returns random integer between 1 and # of sides of die
# Steps:
#check input number to ensure it is 1 or greater
# IF NOT - raise error (need to have at least 1 side on die - note, I'd say you need at least 2, but I'm not making the rules here.)
# ELSE set class sides equal to input number 
# sides method - return number of sides of die
# roll method - choose random number between 1 and number of sides

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides >=1
#       raise ArgumentError.new("Number of sides needs to be at least one")
#     end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     return Random.new.rand(@sides) + 1
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides >=1
      raise ArgumentError.new("Number of sides needs to be at least one")
    end
    @sides = sides
  end

  attr_reader :sides

  def roll
    return Random.new.rand(@sides) + 1
  end
end

# 4. Reflection

=begin
What is an ArgumentError and why would you use one?
  An ArgumentError is an error that should be raised when there is something wrong with the arguments used for calling a method. It's used to indicate that there is a problem with the inputs to the method and to give the programmer a chance to correct them within the program, or to end the program and raise an error so that it can be corrected.


What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

  I implemented the Random.new.rand method and the attr_reader accessor method. I initially tried to call the .rand method directly from Random, until I recalled that I needed to actually instantiate class Random first (ie, call Random.new) to have something to call the instance method .rand from. The accessors were fairly straightforward, though. (Possible accessors: attr_reader, which allows you to read a value from inside the class, attr_writer, which allows you to update a value inside the class, and attr_accessor, which allows you to both read the value and update it.)

What is a Ruby class?

  A Ruby class is a blueprint for building an object. It contains instance variables and class variables to describe the attributes of the class, and instance and class methods to describe the behavior of the class. 

  In a more technical sense, a class is an instantiated object of type Class, with the name capitalized to indicate that it's a global constant - the methods and variables in class (probably) won't be changing, after all.

  Classes are written, loosely, as follows:
  class Classname
    @@class_variables_maybe
    def initialize(variables)
      @instance_variable = variable1
      etc...
    end
    def another_method
      do stuff
    end
  end

Why would you use a Ruby class?

  You would use a Ruby class to create an object that groups together certain information and methods for using that information. This is especially useful when you want to create many different objects that can be described by the same information; eg, you could create a "Person" class with instance variables "@name", "@age", "@address", and so forth, and instantiate the Person class as many times as you like - once for each person in your cohort, once for everyone on your block, once for everyone on the planet - given enough memory, the class is infinitely replicable.

What is the difference between a local variable and an instance variable?

  A local variable can only be used in the context in which it was defined (ie, it's bound to the method it was defined in, and cannot be used outside of that method); an instance variable can be used anywhere in the instance of the object it is declared in.

Where can an instance variable be used?

  Anywhere within the instance of the object it was declared in.
=end