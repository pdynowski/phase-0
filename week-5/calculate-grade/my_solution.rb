# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input?

# Method must accept an array of scores.

# What is the output? (i.e. What should the code return?)

# Output should be a single letter representing grade.

# What are the steps needed to solve the problem?

# READ in array of scores
# ITERATE over array to calculate sum of scores in array
# DIVIDE sum by length of array to calculate average
# CASE statement by average to return letter grade
  # average >= 90 return "A"
  # 90 > average >= 80 return "B"
  # 80 > average >= 70 return "C"
  # 70 > average >= 60 return "D"
  # 60 > average return "F"

# 1. Initial Solution

# def get_grade(score_array)

#   average = score_array.reduce(:+)/score_array.length

#   case 
#     when average >= 90
#       return "A"
#     when average >= 80
#       return "B"
#     when average >= 70
#       return "C"
#     when average >= 60
#       return "D"
#     else
#       return "F"
#   end

# end


# 3. Refactored Solution

def get_grade(score_array)

  case score_array.reduce(:+)/score_array.length
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    else
      return "F"
  end

end


# 4. Reflection

# So, fun. Simple use of reduce to get the total scores and division by length
# to get the average. Was able to eliminate a temporary variable by dropping
# the calculation right into the case statement. This required a reshuffle of
# the way the when statements declared their switches - can only use
# comparisons if there's a variable to use, so replaced the variable
# references with ranges. It seems like it may be possible to eliminate the
# case statement, from poking around on the web, but I'm not sure what the
# point would be here.
