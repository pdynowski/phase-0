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
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#