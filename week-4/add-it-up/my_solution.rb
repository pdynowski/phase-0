 #Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of numbers in array
# Steps to solve the problem.
# create sum element = 0
# iterate over passed-in array
#  add each element to sum
# return sum



# 1. total initial solution

# def total(array)
#   sum = 0
#   array.each do |num|
#     sum += num
#   end
#   sum
# end

# 3. total refactored solution

def total(array)
  array.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: elements of array joined into sentence
# Steps to solve the problem.
# create sentence holder variable
# iterate over array
#   push words from array into sentence
# capitalize first word
# add period at end
# return sentence

# 5. sentence_maker initial solution
# def sentence_maker(array)
#   sentence = ""
#   array.each do |word|
#     sentence += word.to_s + " "
#   end
#   sentence[-1] = "."
#   sentence.capitalize!
  
# end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  sentence = array.join(" ")
  sentence.capitalize!
  sentence += "."
  
end