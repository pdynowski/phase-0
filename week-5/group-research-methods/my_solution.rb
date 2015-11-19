# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select{ |item|
    item.to_s.include?(thing_to_find)
  }
end

def my_hash_finding_method(source, thing_to_find)
  source.select{ |pet, age|
    age == thing_to_find 
  }.keys
end

# Identify and describe the Ruby method(s) you implemented.

# I implemented Array#select, Hash#select, Object#to_s, String#include? and
# Hash#keys. Array#select and Hash#select operate similarly, iterating over
# all values in the collection and returning those that met the test set
# within the select block. Hash#keys was required because Hash#select returns
# the full hash entries that met the condition, while we only wanted to see
# the keys of that set. Object#to_s was necessary to ensure that everything
# from the source was a String, and thus had the String#include? method
# available. String#include tests a given string to see if a given substring
# exists within it.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map!{ |item|
    item += 1 if item.is_a?(Integer)
    item
  }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each_key do |pet|
    source[pet] += 2
  end
end

# Identify and describe the Ruby method(s) you implemented.

# Array#map, Hash#each_key, Hash#[key], Object#is_a? were used. Array#map
# allows you to iterate over an array and apply a function to each item in the
# array. Object#is_a? was used to test the objects from the array, and add one
# to them if they were integers. Hash#each_key allowed me to iterate over the
# keyset of the hash, and Hash#[key] allowed me to access and update the
# values in the hash.



# Person 3
def my_array_sorting_method(source)
  source.sort_by { |item| 
    item.to_s
  }
end

def my_hash_sorting_method(source)
  source.sort_by { |key, value|
    value
  } 
end

# Identify and describe the Ruby method(s) you implemented.

# Enumerable#sort_by for both; Object#to_s for the array was required to turn
# everything in the array to strings so that they could all be compared to
# each other. Enumerable#sort_by allows you to define the value or method that
# you wish to sort the collection by; string values in the case of the array,
# pet ages in the case of the hash.

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.reject!{ |item|
    item.to_s.include?(thing_to_delete)
  }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete) 
  source
end

# Identify and describe the Ruby method(s) you implemented.

# Array#reject! - destructively creates array of all members of original array
# that do not meet a specified condition. Object#to_s turned all of the
# elements of the array into strings, so the String#include method could be
# run to check for which elements to reject. Hash#delete was used to delete
# the selected key/value pair from the hash.



# Person 5
def my_array_splitting_method(source)
  source.partition { |item|
    item.is_a?(Integer)
  }
end

def my_hash_splitting_method(source, age)
  source.partition { |pet, age|
    age <= 4
  }
end

# Identify and describe the Ruby method(s) you implemented.

# The new method for this exercise was the Enumerable#partition method, which splits a collection into two arrays based on which members of the collection meet the criteria of the test and which do not - basically, it's like running a select and reject at the same time.



# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# For the assignment, I implemented Person 1's methods -
# my_array_finding_method and my_hash_finding_method. The important Enumerable
# method in each method that I wrote was Enumerable#select - which allows you
# to set a condition in it's block, and only pick the items from the initial
# collection that meet that condition. So, in the case of
# my_array_finding_method, the condition that was set was that the object read
# in from the array contained a "t". So, each item that was read in from the
# array first had to be converted to a string, so that the String#include?
# method would work. Select then returned an array containing all the array
# items for which item.include?("t") evaluated to true. Similarly, the hash
# was run through a selector to match the age of pets and return the key/value
# pair.



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# Reflection, it appears, is saved for 5.4.2 this time, so my reflections will
# mostly be over there. My only comment here is, damn, is it easy for me to
# spend forever reading Ruby docs.
