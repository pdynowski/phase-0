 # Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?

# Input is, initally, an array of numbers. Later, may be an array of anything.

# What is the output? (i.e. What should the code return?)

# Output is the median of the array - the value in the middle of a sorted
# version of the array. If the array is an even length, the median is the
# average value of the two middle entries.

# What are the steps needed to solve the problem?

# READ in data array
# SORT the array from smallest to largest
# DIVIDE the array length by 2
  # IF array length/2 is even, that is the index of the median. return that value
  # ELSE return average of that index and that index-1


# 1. Initial Solution

# def median(array)

#   array.sort!

#   return array[array.length/2] if array.length % 2 != 0
#   return (array[array.length/2] + array[array.length/2 -1])/2.0

# end


# 3. Refactored Solution

def median(array)

  array.size % 2 == 0 ? (array.sort[array.size/2] + array.sort[array.size/2-1])/2.0 : array.sort[array.size/2]

end

# 4. Reflection

# Again, pretty simple problem after I got over the stupid integer division
# roadblock. Every damned time, even when I think about it beforehand.
# Refactoring allowed me to make the method nondestructive without having to
# add another copy of the array to memory. I'm a fan of the ternary operator,
# but I'm by no means sure it's a better option than the return/return from
# the initial solution. Also, this is going to choke hard if I get an array of
# even length containing strings...
