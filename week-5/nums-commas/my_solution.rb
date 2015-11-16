# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integer
# What is the output? (i.e. What should the code return?) comma-separated string
# What are the steps needed to solve the problem?
# change input integer into string value, reverse it, and split it into an array
# LOOP through integer division for powers of 1000
	# count up
	# IF result of integer division >= 1
		# push 3 digits into array holding return values
		# push a comma into array
		# add one to counter
# UNTIL integer division returns 0
# push the remaining characters onto the return array
# return the reversed and joined return array


#1. Initial Solution

# def separate_comma(value)
# 	value_array = value.to_s.reverse.split(//)
# 	counter = 1
# 	return_array= []
# 	while value/(1000**counter) >= 1
# 		3.times {return_array << value_array.shift}
# 		return_array << ","
# 		counter+=1
# 	end
# 	while value_array != []
# 		return_array << value_array.shift
# 	end
# 	return_array.reverse.join
# end


# 2. Refactored Solution

def separate_comma(value)
	value_string = value.to_s
	counter = 1
	while value/(1000**counter) >= 1
		value_string.insert(-4*counter, ",")
		counter+=1
	end
	value_string
end


# 3. Reflection


# What was your process for breaking the problem down? What different approaches did you consider?

# Mostly, my process involved considering ways to get commas into the appropriate locations in the string. I considered iterating over the array and tracking how many iterations I had gone through in order to determine where the commas went, but that seemed overly complicated, or, at least, more complicated than what I went with.

# Was your pseudocode effective in helping you build a successful initial solution?

# I believe that it was, yes. But I believe it was even more effective in getting me to think enough about the flow of the code in order to find a better initial solution - even before I started coding at all.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how? 

# The new method that I used in my refactored code was the String.insert method. The documentation was very clear once I found the method (which I did through a Google search on placing characters at specific indices in a string). It did significantly change the way my code worked, as I was able to just drop the commas in the correct places in the string, rather than pantsing around with reversing strings, splitting them into arrays, shifting the characters into a new array, joining them, and then reversing the whole mishegoss. Although the code got much simpler, the basic idea is the same - drop the commas where they're needed.

# How did you initially iterate through the data structure?

# I never really ended up iterating through the data structure - I guess, initially, I iterated through it by pushing the values into a new array. But, after refactoring, I don't even do that.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# I do feel that the refactored version is more readable, mostly because it's much simpler - it just drops the commas where they need to be in the string, instead of going through a complicated conversion-and-reconversion process.  
