# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

#pseudocode Input: array of numbers or strings output: array of most-
#frequently appearing values in array (will return multiple answers if many
#things appear the same number of times)

# read in initial array
# set up empty hash - default value 0
# ITERATE through initial array
# FOR EACH cell in array
  # array value set to key for hash
  # hash value increased by one
# Search hash for maximum values
  # Grab all entries with maximum value
# Return array containing hash keys associated with maximum values

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

# Which data structure did you and your pair decide to implement and why?

# We decided to implement a hash because we needed to store a value - in this
# case, the number of occurrences of each object in the initial array - and
# associate that value with the object. This makes the hash more appropriate
# in this case than an array would have been.

# Were you more successful breaking this problem down into implementable
# pseudocode than the last with a pair?

# Yes; I think the pseudocoding is getting easier for everyone as we go along.
# Still suffered a bit from being a little nonspecific in the pseudocode at
# times, though.

# What issues/successes did you run into when translating your pseudocode to
# code?

# I left a bit of pseudocode a bit too open - "grab all entries with maximum
# values" (from the hash), so we needed to spend a bit of extra time going
# over that part when we were actually coding.

# What methods did you use to iterate through the content? Did you find any
# good ones when you were refactoring? Were they difficult to implement?

# We used #each to iterate over the input array, which seemed necessary and
# appropriate for the task of building a hash from the data in that array. We
# also used #select to pull the key/value pairs with the maximum values from
# the hash. The methods were pretty simple to implement, although it did take
# us a minute to remember that we needed to return only the keyset from the
# selected pairs.
