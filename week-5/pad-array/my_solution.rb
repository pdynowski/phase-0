# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? initial array, minimum length for array, padding to be used to fill out array
# What is the output? (i.e. What should the code return?) code should return padded array
# What are the steps needed to solve the problem?
#1. Check if initial array is longer than minimum length
# IF it is, return array as-is
# ELSE pad array
#(this step for non-destructive only): create new array variable equivalent to initial array, use this going forward
#UNTIL length equals minimum length, push padding value onto array
# return array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    return array
  else
    array.push(value) until array.length == min_size
  end
    array
end

# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
#   new_array = []
    
#   array.each do |value|
#       new_array.push(value)
#    end
  
#   if array.length >= min_size
#     return new_array
#   else
#         new_array.push(value) until new_array.length >= min_size
#   end
#     new_array
    
# end


# 3. Refactored Solution
 def pad(array, min_size, value = nil) #non-destructive
  # Your code here
    new_array = array.clone
    
  if array.length >= min_size
    return new_array
  else
        new_array.push(value) until new_array.length >= min_size
  end
    new_array
    
end



# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# We were successful at breaking the problem down into small steps - basically, what's the next comparison we need to make, or what's the next line we need to add.


# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# We were very easily able to translate the pseudocode into code. We were much more successful pseudocoding on paper, instead of in Sublime, as we were better able to resist the desire to jump right into coding as we were discussing the best way to do things.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our initial solution was not successful at passing the tests - our supposedly non-destructive method ended up being destructive. Basically, we were setting a new variable to be equal  to the initial array, and then modifying that variable; unfortunately, since the new variable was pointing at the same spot in memory as the initial array, the initial array was also being modified when we modified the new array. We resolved this by, first, looping through the original array and pushing the values to the new array, and then, upon refactoring, creating the new array as a clone of the initial array, which copies the values if the initial array into a new memory location, making it a separate object that you can modify without changing the initial array.


# When you refactored, did you find any existing methods in Ruby to clean up your code?
# The main thing that we used to clean up our code was the .clone method, which allowed us to eliminate an iterative loop over the initial array.


# How readable is your solution? Did you and your pair choose descriptive variable names?
# I find our code fairly readable - the only variable name we chose was new_array, which I think is descriptive of the purpose of the variable.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods change the input permanently; non-destructive methods do not. For example, when you run our destructive method pad! above, the modifications occur in the initial array - it is itself changed from [1,2,3] to [1,2,3,nil,nil]. The non-destructive method pad, on the other hand, returns a value of [1,2,3,nil,nil], but the initial array is still equal to [1,2,3].