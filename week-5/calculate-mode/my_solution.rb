# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

#pseudocode
#Input: array of numbers or strings
#output: array of most-frequently appearing values in array (will return multiple answers if many things appear the same number of times)

# read in initial array
# set up empty hash - default value 0
# ITERATE through initial array
# FOR EACH cell in array
  # array value set to key for hash
  # hash value increased by one
# Search hash for maximum values
  # Grab all entries with maximum value
# Return array containing hash keys associated with maximum values

def mode(array)
  value_count = Hash.new(0)
  array.each do |item|
    value_count[item] += 1
  end
  # large_num = value_count.values.max
  value_count.select { |key, value|
    value == value_count.values.max 
    }.keys
  # solution =[]
  # value_count.each do |key, value|
  #   if value == large_num
  #     solution << key
  #   end
  # end
  # p solution
end

# 1. Initial Solution
# def mode(array)
#   value_count = Hash.new(0)
#   array.each do |item|
#     value_count[item] += 1
#   end
#   large_num = value_count.values.max
#   solution =[]
#   value_count.each do |key, value|
#     if value == large_num
#       solution << key
#     end
#   end
#   p solution
# end



# 3. Refactored Solution
def mode(array)
  value_count = Hash.new(0)
  array.each do |item|
    value_count[item] += 1
  end

  value_count.select { |key, value|
    value == value_count.values.max 
  }.keys
end

# 4. Reflection