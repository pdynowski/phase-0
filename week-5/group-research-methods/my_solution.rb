# Only 3 people posted to our accountability group, so there are only the
# first three people here. I included the reflections for each person under
# their particular solution, as well, but no names for any section.

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

# def my_array_modification_method!(source, thing_to_modify)
#   source_position = 0
#   while source_position < source.length
#     source[source_position] += thing_to_modify if source[source_position].is_a? Integer
#     source_position += 1
#   end
#   source
# end


def my_array_modification_method!(source, thing_to_modify)
  source.map!{ |item|
    item += thing_to_modify if item.is_a?(Integer)
    item
  }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { | dog , age | source[dog] = age + thing_to_modify }
end

puts my_array_modification_method!(i_want_pets, 2)
puts my_hash_modification_method!(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.  First I used a
# while loop, and then I decided it would be so much better if I used .each as
# a loop as a way to refactor. However this became problematic because I
# couldn't for the life of me change the original array as a destructive. It
# turned out .each is specifically for not being destructive. I still used it
# on the hash and it worked beautifully. But on the array in the first part I
# used .map which is like .each and  uses a loop to iterate through an array
# and make changes to the array.


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|i| i.to_s}
end

def my_hash_sorting_method(source)
  source.sort_by {|k,v| v}
end

# Identify and describe the Ruby method(s) you implemented.
# => For both challenges, the sort_by method is the cleanest way to go.
# => For arrays, the key is making sure to convert each element to a string so there's a common way to compare each element.
# => Not doing so results in an error. Doing so sorts it alphabetically as strings, where numbers come before capital letter, which then come before non-caps.
# => For arrays, since we know all of the values are integers, it's a bit more straightforward.