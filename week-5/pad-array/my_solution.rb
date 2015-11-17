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