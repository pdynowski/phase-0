#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: NewData requires input name
# Output: Greetings#hello outputs greeting string
# Steps: add initialize method to NameData - accepts name input
    # add instance variable @name to NameData, initialize to input
# add attr_reader to NameData to access name
# add initialize method to greetings
  # create instance variable @student in Greetings initialization
# create Hello method
  # write greeting to screen



class NameData
  attr_reader :name

  def initialize(name)
    @name = name
  end

end


class Greetings

  def initialize()
    @student = NameData.new("Paul")
  end

  def hello
    puts "Hello, #{@student.name}. Nice to see you"
  end

end

greet = Greetings.new
greet.hello
# Reflection

# What is a reader method?

# A reader method is a method within a class that allows you to obtain the
# value of an instance variable from outside the class; similar to "getter"
# methods in other languages.

# What is a writer method?

# A writer method is a method within a class that allows you to change to
# value of an instance variable from outside the class. Similar to "setter"
# methods in other languages.

# What do the attr methods do for you?

# attr_reader automatically creates a reader method - basically, it
# automatically creates and inserts the code:

# def variable
#   @variable
# end

# attr_writer automatically creates a writer method - the code:

# def variable = variable
#   @variable = variable
# end

# attr_accessor creates both the reader and writer sets of code

# Should you always use an accessor to cover your bases? Why or why not?

# No, you shouldn't. You should only use accessors when you actually need the
# ability to read or write to the variable. As a general rule, you shouldn't
# allow any more access to instance variables than is actually necessary to
# perform the tasks required of the code - adding unneeded access increases
# the possibility of errors and increases the difficulty of debugging code.


# What is confusing to you about these methods?

# Not a thing.