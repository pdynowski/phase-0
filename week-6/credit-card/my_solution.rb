
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Phil Thomas.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: 16 digit number (check)
# Output: boolean value 
# Steps: 
# initialize method
# check the number has 16 digits and is integer, raise error if not
# split it up into an array of its individual digits
# reverse and iterate over odd indices, 
#   double each digit w odd index 
# reverse back
#
# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0). 
# iterate over array, if n >= 10, add one to digit mod 10
# sum all values in array
# 
# check if sum % 10 == 0 if so return true
#
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(cc_number)
#     @cc_number = cc_number.to_s
#     raise ArgumentError if @cc_number.length != 16  
#   end    

#   def check_card
#     cc_array = @cc_number.chars
#     cc_array.reverse!
    
#     cc_array = cc_array.each_with_index.map do |digit, index|
#       if index.odd?
#         digit = digit.to_i * 2 
#       else
#         digit = digit.to_i
#       end
#     end
    
#     cc_total = cc_array.reduce do |sum, digit|
#       sum += 1 if digit >=10
#       sum += digit % 10
#     end
      
#     if cc_total % 10 == 0; return true
#     else; return false
#     end
#   end

# end



# Refactored Solution

class CreditCard
  
  def initialize(cc_number)
    @cc_number = cc_number.to_s
    raise ArgumentError if @cc_number.length != 16  
  end    
  
  # doubles every even digit of given array (odd indices)
  def double_odd_indexes!(cc_number)
    cc_number.map!.with_index do |digit, index|
      if index.odd?
        digit = digit.to_i * 2 
      else
        digit = digit.to_i
      end
    end  
  end
  
  #sums digits of numbers in array
  def total_digits(cc_number)
    cc_number.reduce do |checksum, digit|
      checksum += 1 if digit >=10
      checksum += digit % 10
    end  
  end

  #checks to see if card number is valid, returns true or false
  def check_card
    cc_array = @cc_number.chars
    cc_array.reverse!
    
    double_odd_indexes!(cc_array)
    
    return true if total_digits(cc_array) % 10 == 0 
    
    false  
  end
end






# Reflection

=begin

What was the most difficult part of this challenge for you and your pair?

The thing we had the most trouble with was figuring out how to double the odd-
indexed values while converting all the digits back to integers from strings.

What new methods did you find to help you when you refactored?

We figured out the map!.with_index method to help us refactor our method that
used .each_with_index.map - it allowed us to make the method destructive,
instead of reassigning the values, and seems to be a little more logical to
follow/easier to read and figure out what we're doing.


What concepts or learnings were you able to solidify in this challenge?

General methods for working with arrays. Specifically, new map methods and the
reduce method. Also solidified good class/method form - we managed to refactor
a lot of code into separate methods to make things more clear.

=end