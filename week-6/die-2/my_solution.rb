# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings representing sides of die

# Output: sides should return the number of sides on the die roll should
# return the value of a random side.

# Steps: initialize Die with input array
# check that input array is not empty
# if array is empty, raise error
# define instance variable @sides
# define instance variable @results
# set @sides = length of input array
# set @results = input array
# define METHOD sides to return @sides
# define METHOD roll to return random value
  # select random number less than or equal to number of sides
  # return (random number)th cell of @results


# Initial Solution

# class Die
#   def initialize(labels)
#     raise(ArgumentError, "Empty Array: There must be at least one side to your die") if labels.empty?
#     @sides = labels.length
#     @results = labels
#   end

#   def sides
#     @sides
#   end

#   def roll
#     @results[Random.new.rand(@sides)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    raise(ArgumentError, "Empty Array: There must be at least one side to your die") if labels.empty?
    @sides = labels.length
    @results = labels
  end

 attr_reader :sides

  def roll
    @results[Random.new.rand(@sides)]
  end
end

# Reflection

=begin
  
What were the main differences between this die class and the last one you created in terms of 
implementation? Did you need to change much logic to get this to work?

The major difference between this die and the last one was that the random
number generated needed to be used to select a cell of an array instead of
just being returned. This meant that there needed to be another instance
variable pointing to the input array, as well.

What does this exercise teach you about making code that is easily changeable
or modifiable?

This exercise makes it clear that writing code that is clear and simple in the
first place makes it much simpler to add new features or modify old ones when
requirements change.


What new methods did you learn when working on this challenge, if any?

Learned the array.empty? method in order to perform the test to see if the
class needed to raise an ArgumentError. To raise the error, if the input array
was empty, you'd use the syntax "raise(ArgumentError, "Error message")".

What concepts about classes were you able to solidify in this challenge?

This challenge helped solidify the use of instance variables and accessors -
specifically, the attr_reader, which allows you to read the value of an
instance variable without having to write a full method just for that purpose.
  
=end