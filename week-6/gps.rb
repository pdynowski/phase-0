# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# input number of people to feed, library containing how many people each item feeds
# start a counter at the number of people to feed, decrement the counter until it reaches the number that an item in the hash can feed
# divide the original number of people by the number of people that that item will feed to determine how many of that item are needed
# mod the original number buy the people that item will feed to determine number of people remaining to feed
# find the item (key) that has the used value of people that it will feed
# use recursion into this method with remaining people to determine smaller items.
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
  # grabs required number of ingredients from library, reports number of full items can be made, reports # of full items and returns # of leftover ingredients
  serving_size = people_served_by_item.values_at(item_to_make)[0]
  serving_size_mod = people_to_feed % serving_size
  
  if serving_size_mod == 0
    "Calculations complete: Make #{people_to_feed/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{people_to_feed/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover people to feed. Suggested baking items: #{calc_item_number(serving_size_mod,people_served_by_item)}"
  end
end
# p calc_item_number(12, {"cookie" => 1, "cake" =>  5, "pie" => 7})
p serving_size_calc("pie", 13)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

input: number of people to feed, the serving size library

output: the suggested baking items

sort the library by the serving size from biggest to smallest

iterate through until the number is less or equal to the number of leftover people

once we get the serving size number, we do the calculation to get the suggested baking items



=end
