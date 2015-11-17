# GPS 2.2 - Create an Electronic Grocery List# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split input list into array 
    # create new hash
  # set default quantity
    #iterate over array to create hash 
  #
  #   assigning default value to each key
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# test one -  carrots apples cereal pizza
# test two - nothing in it
def new_list(list_items)
  list_array = list_items.split(" ")
  grocery_list = Hash.new
  # Hash[(1..5).map { |num| [num, 0] }]
  list_array.each  { |item| 
    grocery_list[item] = 1
    }
  grocery_list
end
  
# Method to add an item to a list
# input: list, item name and optional quantity 
# steps: check keyset to see if item already exists
# IF it exists, update the value (call update method)
# ELSE add it to list.
# output: new list
def add_item(list, item_name, qty=1)
  if list.has_key?(item_name)
    list[item_name] += qty
  else
    list[item_name]=qty
  end
  list
end

# Method to remove an item from the list
# input: list, item name
# steps: check keyset
# IF item exists, remove it
# ELSE do nothing
# output: return updated hash

def remove_item(list, item_name)
  if list.has_key?(item_name)
    list.delete(item_name)  
  end
  list
end

# Method to update the quantity of an item
# input: list, item_name, new qty
# steps: check keyset for item
# IF item exists, reassign value
# ELSE call add method
# output: updated hash

def update_item(list, item_name, new_qty)
  if list.has_key?(item_name)
    list[item_name] = new_qty
  else
    list = add_method(list, item_name, new_qty)
  end
  list
end

# Method to print a list and make it look pretty
# input: list
# steps: loop over list [item: qty, newline] for each item
# output: prints grocery list, returns nil
def print_list(list)
  grocery_list = "Grocery List" + "\n"
  
  list.each do |item, qty|
     grocery_list += "#{item} : #{qty}" + "\n"
  end
  
  puts grocery_list
end


list = new_list("carrots apples cereal pizza")
# list=new_list("")
# p list
list = add_item(list, "lemonade", 2)
list = add_item(list, "tomatoes", 3)
list = add_item(list, "tomatoes", 1)
# p list
# list = add_item(list, "lemonade", 2)
# list = add_item(list, "lemonade", 2)
list = update_item(list, "lemonade", 1)
list = remove_item(list, "ice cream")
#list = add_item(list, "carrots", 4)

# p list 

 print_list(list)
 p print_list(list)


 # What did you learn about pseudocode from working on this challenge?
 # I learned that pseudocode is difficult - mostly because it's hard to resist the urge to jump into coding when you've got a basic idea for the code ready, so it's easy to half-ass the pseudocoding. Possibly better, for me at least, to do pseudocoding away from the computer.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# We went so quickly to using hash as the solution, and it seemed so obvious (since we needed to store information about each list item), that we didn't really think about the tradeoffs. Honestly, even thinking about it after the session, I'm not sure what a good reason for using (nested?) arrays would be.

# What does a method return?
# A method returns whatever you tell it to using the return keyword. If that's not used, it returns whatever the last-evaluated value was. If there are none of those, it returns nil.

# What kind of things can you pass into methods as arguments?
# Any object you want to - arrays, hashes, integers, strings, boolean values, user-defined objects...

# How can you pass information between methods?
# Well, if we're limited from passing class variables around between methods within that class, as we were here, the easiest way to pass information is to create an object that holds the necessary information and pass that object to each required method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I have a bad habit of trying to both use both do/end and {} at the same time. I'm getting better about it. I'm still confused as to why "\n" doesn't appear to come up as a newline character within strings when I think it should, but we'll get through that difficult time as well. Also, the actual meaning/use of the default value in a hash was clarified for me (it's what's returned when a key that doesn't exist is accessed, not what is assigned to a key if you don't assign a value to that key).