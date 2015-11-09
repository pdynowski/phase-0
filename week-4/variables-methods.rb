puts "Hello, there. What's your first name?"
first_name = gets.chomp
puts "And your middle name?"
middle_name = gets.chomp
puts "And, finally, your last name?"
last_name = gets. chomp
puts "Hello, " + first_name + " " + middle_name + " " + last_name + ". Thank you for your patience."

puts "Say, " + first_name +", what's your favorite number?"
fav_num = gets.chomp.to_i;
fav_num += 1
puts "Have you considered " + fav_num.to_s + " instead? It is one more, after all."


# How do you define a local variable?

# You define a local variable by setting it equal to a value. Local variables are generally named starting with a lower-case letter; other types of variables begin with upper-case letters or special symbols.

# How do you define a method?

# A method is defined using the def function. There are a couple of ways to define the method; my preferred method is of the form:
# 
# def method_name(parameters)
# 	method statements
# end
# 

# What is the difference between a local variable and a method?

# A local variable contains a single value, while a method is a sequence of statements that performs operations and returns a value.

# How do you run a ruby program from the command line?

# You run a ruby program from the command line with the syntax "ruby program_name"

# How do you run an RSpec file from the command line?

# With the syntax rspec "rspec_file_name"

# What was confusing about this material? What made sense?

# I didn't find any of the material in this assignment confusing.

# Link to 4.3.1: https://github.com/pdynowski/phase-0/blob/master/week-4/address/my_solution.rb

# Link to 4.3.2: https://github.com/pdynowski/phase-0/blob/master/week-4/math/my_solution.rb