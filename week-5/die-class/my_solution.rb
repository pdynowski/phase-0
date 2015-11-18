# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 0.5 hours on this challenge.

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

class Die
  def initialize(sides)
    unless sides >=1
      raise ArgumentError.new("Number of sides needs to be at least one")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    return Random.new.rand(@sides) + 1
  end
end



# 3. Refactored Solution

#I'm going to be honest, here - I'm not sure what there is for me to refactor in my initial solution. If I'm incorrect about that, please let me know.





# 4. Reflection