# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |number|
  if number.is_a? Array
    number.map! do |inner_number|
      inner_number += 5
    end
  else
    number += 5
  end
end
print number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |word|
#   if word.is_a? Array
#     word.map! do |inner_word|
#       if inner_word.is_a?(Array)
#         inner_word.map! do |inner_inner_word|
#           inner_inner_word += "ly"
#         end
#       else
#         inner_word += "ly"
#       end
#     end
#   else
#     word += "ly"
#   end
# end


def add_ly(word)
  if word.is_a?(Array)
    word.map! do |word2|
      add_ly(word2)
    end
  else
    word += "ly"
  end
end

startup_names.map! do |word|
  add_ly(word) 
end
  
p startup_names


=begin
  
What are some general rules you can apply to nested arrays?

General rule: nested arrays are a pain in the butt. When working with them,
it's necessary to always keep in mind what the specific object your iterator
element is dealing with is - am I working with a number, a string, an array?
Basically, the best rule is the same as always - be mindful of what you and
your code are doing.

What are some good ways you can iterate over nested arrays?

Enumerable methods - methods built on the .each method - are generally the
best ways to iterate over nested arrays. Note, though, that it will be
required that you test to check if each iterator element is an array in order
to see if you need to iterate over that element separately. Tl;dr: iterators
within iterators.


Did you find any good new methods to implement or did you re-use one you were
already familiar with? What was it and why did you decide that was a good
option?

We reused the map! function; we decided map! was best because we were
performing the same operation on all the elements of the arrays, which is what
map is designed for. We chose the destructive version because the problem
definition told us to modify the given array, implying that the original
should be changed.

=end
