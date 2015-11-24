# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# input number of people to feed, library containing how many people each item
# feeds
# start a counter at the number of people to feed, decrement the counter until
# it reaches the number that an item in the hash can feed
# divide the original number of people by the number of people that that item
# will feed to determine how many of that item are needed
# mod the original number buy the people that item will feed to determine
# number of people remaining to feed
# find the item (key) that has the used value of people that it will feed
# use recursion into this method with remaining people to determine smaller
# items.

def calc_item_number(people_to_feed, people_served_by_item)
  number_search = people_to_feed
  until people_served_by_item.value?(number_search)
    number_search -= 1
  end
  number_to_serve = people_to_feed / number_search
  number_remaining_to_serve = people_to_feed % number_search
  item_to_serve = people_served_by_item.select{|item,value| value == number_search}.keys[0]

  if(number_remaining_to_serve == 0)
    " #{number_to_serve} #{item_to_serve}"
  else
    " #{number_to_serve} #{item_to_serve}#{calc_item_number(number_remaining_to_serve, people_served_by_item)}"
  end
  
end

def serving_size_calc(item_to_make, people_to_feed)

  # passed arguments: item to make, total number of ingredients 
  # indicates how many ingredients needed to make item
  people_served_by_item = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # it appears that this code section performs a nil check on the input item

  unless people_served_by_item.key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  ################################################
  
  # grabs required number of ingredients from library, reports number of full
  # items can be made, reports # of full items and returns # of leftover
  # ingredients

  serving_size = people_served_by_item.values_at(item_to_make)[0]
  serving_size_mod = people_to_feed % serving_size
  
  if serving_size_mod == 0
    "Calculations complete: Make #{people_to_feed/serving_size} #{item_to_make}"
  else
    "Calculations complete: Make #{people_to_feed/serving_size} #{item_to_make}, you have #{serving_size_mod} leftover people to feed. Suggested baking items: #{calc_item_number(serving_size_mod,people_served_by_item)}"
  end
end

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

What did you learn about making code readable by working on this challenge?

I learned that making code readable is incredibly helpful to anyone who needs
to read your code later. This one was so bad that we completely misinterpreted
what was going on for a while - oddly, the math would have worked out exactly
the same, though...

Did you learn any new methods? What did you learn about them?

I don't think that we used any new methods, but I learned about values_at from
the original code. In the case of a hash, values_at returns an array of the
values for the keys provided in the function call.

What did you learn about accessing data in hashes?

In addition to the above values_at call, I don't think we did anything new
with accessing the hash values. Practice using key access for values, the
select method, and grabbing keys from values is always good, though.

What concepts were solidified when working through this challenge?

The most important concept solidified for me was the value of writing simple,
readable code using basic methods and meaningful variable names. Also, we got
to practice a little bit of recursion, so that was fun.

Further stuff: It was an interesting thing to do, to decide when to stop when
adding functionality/refactoring. Really, the couple of lines left in the main
method that handle calculations and printing should probably have been
abstracted into the extra method we wrote, but there were just enough
differences to make the formatting/calculations somewhat troublesome. E.g.,
the original method gets passed an item to be ordered, which is calculated in
the new method, and wouldn't generally come up with the same answer.

=end
