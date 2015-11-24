# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: when creating game, input should be an integer; also, must provide a
# method to allow user to input guesses, which should accept integers

# Output: symbols :high, :low, :correct for responses to guesses, also a
# boolean output for a game.solved method


# Steps:
# Initialize class (game)
  # instance variable @answer = input integer
  # instance variable @solved = false
# GUESS method
  # ACCEPT integer input
  # COMPARE input to @answer
  # IF input == @answer
    # RETURN correct symbol, toggle @solved to true
  # ELSE IF input < @answer
    # RETURN low symbol
  # ELSE RETURN high symbol
# SOLVED method
  # RETURN @solved


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
  end

  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection