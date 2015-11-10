# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => According to the error statement, the error occurs at the end of the last line of the code.
# 6. Why did the interpreter give you this error?
# => The interpreter threw this error because the syntax for the while loop was incorrect - it wasn't properly closed with an 'end' statement. It listed the last line in the program as the issue because it couldn't know the while loop wasn't closed until it reached the end of the file without seeing the end statement. Beyond the unclosed while loop, there also would have been an infinite loop (which probably wouldn't have showed up in an error check, as it is, sadly, perfectly legitimate code), since the while condition could never have changed from true.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => Line 37
# 2. What is the type of error message?
# => syntax error; NameError, specifically
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method
# 4. Where is the error in the code?
# => the interpreter didn't place an arrow for this error, but the error is in the referencing of a variable that hasn't been assigned a value
# 5. Why did the interpreter give you this error?
# => south_park is referenced but has never been assigned a value

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# =>  line 50
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman' for main
# 4. Where is the error in the code?
# =>  no arrow, but error is in calling undefined method
# 5. Why did the interpreter give you this error?
# => program has a call to a method that has not been defined

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => line 69
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of argument (1 for 0)
# 4. Where is the error in the code?
# => the error is between the parentheses in the function call
# 5. Why did the interpreter give you this error?
# => the program has a call to a method in which the call contains a single argument, but the method takes no arguments

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => line 88
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => at the end of line 88
# 5. Why did the interpreter give you this error?
# => Attempted to call a method that requires one argument with a call that provides zero arguments



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => line 109
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => in the parentheses in the call of cartmans_lie
# 5. Why did the interpreter give you this error?
# => the method call provided a single argument, but the method definition requires two arguments

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => Line 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => at the string following the multiplication sign
# 5. Why did the interpreter give you this error?
# => because ruby can't manage to multiply a number by a string - it's meaningless. If, however, you tried "Respect my authoritay!" * 5, it would work, as it would just print the string 5 times. To sum up: string * number: okay, number * string: not okay and potentially catastrophic to the fabric of the universe.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => line 139
# 2. What is the type of error message?
# =>  ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by zero
# 4. Where is the error in the code?
# =>  at the 0 in the denominator of the division
# 5. Why did the interpreter give you this error?
# => division by zero is not possible, either in Ruby, or anywhere else, really, speaking of potentially catastropihic to the fabric of the universe

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 155
# 2. What is the type of error message?
# => Loaderror
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => in the call to cartmans_essay
# 5. Why did the interpreter give you this error?
# => because the file that it is trying to load at that spot in the code doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# The while loop error was the most difficult to read, as the location of the error was far from the actual place where the actual coding mistake occurred. 

# How did you figure out what the issue with the error was?
# Meta-knowledge helped - ie, the knowledge that the actual mistake would probably be in the next-uncommented chunk of code. Beyond that, it was inspection of the code itself and figuring out what was missing from the syntax. Honestly, I saw the infinite loop problem, first - had to think a minute to realize that that doesn't show up in a compiler check.

# Were you able to determine why each error message happened based on the code?
# Yes, and I think fairly easily.

# When you encounter errors in your future code, what process will you follow to help you debug?
# The error messages are pretty clear, so following those is a good way to fix simple coding errors that the compiler finds. Debugging problems in the logic, of course, will be somewhat more complicated.
