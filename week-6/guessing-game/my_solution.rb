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

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#     @last_guess = nil
#   end

#   def guess(attempt)
#     @last_guess = attempt
#     if attempt == @answer
#       @solved = true
#       :correct
#     elsif attempt < @answer
#       @solved = false
#       :low
#     else
#       @solved = false
#       :high
#     end
#   end

#   def solved?
#     @solved
#   end

# end

# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    @last_guess = nil
  end

  def guess(attempt)
    @last_guess = attempt
    case
    when attempt == @answer
      @solved = true
      :correct
    when attempt < @answer
      @solved = false
      :low
    else
      @solved = false
      :high
    end
  end

  def solved?
    @solved
  end

end

# Reflection

=begin

How do instance variables and methods represent the characteristics and
behaviors (actions) of a real-world object?

Instance variables represent the characteristics of an object - measurable
quantities, names, labels, and so forth. Think of the instance variables as
"information about the object". Methods, then, can be thought of as "things
the object can do" - whether those things are modifying information about the
class or returning information to the user of the class.

When should you use instance variables? What do they do for you?

You should use instance variables when there is common information that needs
to be used in several methods of a class. They provide access to the value of
the variable throughout a particular instance of a class, making it much
simpler to get all the values where they need to be to run methods on them.


Explain how to use flow control. Did you have any trouble using it in this
challenge? If so, what did you struggle with?

Flow control is the ability to execute different sections of code depending on
the values of different variables. The most common examples are if-then-else
statements and case-when statements; if statements are often used for simple,
singular, tests, or if different variables are being tested in different
conditions, and work as follows:

  if variable == test_value    ## if the variable is equal to the test value, the code
    evaluate this              ## on this line will be evaluated
  elsif other_var >= other_val ## this will only be evaluated if above is false
    evaluate things            ## will run this code if other_var > other val
  else
    evaluate this              ## otherwise this code will be run
  end

A case statement, on the other hand, is generally better when you're repeatedly checking the value of a single variable, and it may take any of a large range of values, each of which could require you to execute different code. Case/when example:

  case variable
  when 0              ## if variable == 0, perform code on next line
    do this
  when 1              ## if variable == 1, perform code on next line
    do this
  when 2              ## if variable == 2, perform code on next line
    do this
  etc, etc
  else                ## if variable isn't equal to a listed case, 
    do things         ## perform this code - acts as a default
  end

I didn't have any trouble with flow control in this assignment - the only
question was whether it was worth going to a case statement instead of if/else
statements in the refactoring. I chose to, mostly because it's good practice
to do things multiple ways.

Why do you think this code requires you to return symbols? What are the
benefits of using symbols?

I think that this code requires us to use symbols mainly so that we get some practice working with them. Symbols are immutable (meaning they can only be overwritten, not ever changed), which apparently means that they can offer considerable memory savings over literal strings, and are much easier to compare - every :abc equals every other :abc - they all refer to the same spot in memory, while every string "abc" does not necessarily equal every other "abc", so they need to be compared character by character.


=end