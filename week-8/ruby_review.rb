# Introduction to Inheritance

# I worked on this challenge by myself.


# Pseudocode

# Create GlobalCohort as class, LocalCohort as subclass of GlobalCohort
# GlobalCohort attributes:
#   students
#   Cohort name
#   phase 0 start date
#   immersive (phase 1) start date
#   graduation date
#   email list
#   number of students
# Additional attributes for LocalCohort:
#   city name
# GlobalCohort methods:
#   add_student - add a student to the cohort
#     ACCEPTS student object
#     ADDS student object to list of students

#   remove_student - remove a student from the cohort
#     ACCEPTS string
#     ITERATES over student list
#       IF student name equals input string
#         DELETES object from student list

#   currently_in_phase - calculates phase 0,1,2,3 based on date
#     SWITCH on current date
#       CASE date > phase 0 start, < phase 1 start -> return 0
#       CASE date >= phase 1 start, < ph 1 + 3 weeks, return 1
#       CASE date >= phase 1 + 3wk, < ph1+6wk, return 2
#       CASE >= ph1+6wk, < graduation date, return 3
#       ELSE return "not in any phase"

#   graduated? - returns boolean on whether cohort has graduated
#     IF date > graduation_date, return true
#     ELSE return false

#   email_list - returns list of emails of students in cohort
#     ITERATE over student list
#       ADD student.email to array
#       RETURN array

#   num_of_students - return # students in cohort

# Additional methods for LocalCohort:
#   get_location - returns city of local cohort

# create student class:
#   name - read access
#   email - read/write access



# Initial Solution
require 'date'

class Student
  attr_reader :name
  attr_accessor :email

  def initialize(name, email)
    @name = name;
    @email = email
  end
end

class GlobalCohort

  attr_reader :name, :start_date, :immersive_start_date, :graduation_date

  def initialize(start_date, immersive_start_date, graduation_date, name, students)
    @start_date = start_date
    @immersive_start_date = immersive_start_date
    @graduation_date = graduation_date
    @name = name
    @students = students
  end

  def add_student(student)
    @students.push(student)
    puts "#{student.name} added to student list."
  end

  def remove_student(name)
    @students.reject! { |student|
      student.name == name
    }
    puts "#{name} removed from student list."
  end

  def get_students
    @students.reduce([]) { |list, student|
      list.push(student.name)
    }
  end

  def currently_in_phase
    date = Date.today
    case date
    when @start_date..@immersive_start_date then return 0
    when @immersive_start_date..(@immersive_start_date+21) then return 1
    when (@immersive_start_date+21)..(@immersive_start_date+42) then return 2
    when (@immersive_start_date+42)..@graduation_date then return 3
    else return "Not currently in phase."
    end
  end

  def graduated?
    return Date.today > @graduation_date
  end

  def num_of_students
    return @students.length
  end

  def email_list
    @students.reduce([]) { |list, student|
      list.push(student.email)
    }
  end

end

class LocalCohort < GlobalCohort

  attr_reader :city

  def initialize(start_date, immersive_start_date, graduation_date, name, students, city)
    super(start_date, immersive_start_date, graduation_date, name, students)
    @city = city
  end

end


# Refactored Solution 

# I'm honestly not sure there's much I can do to refactor my above code. I
# didn't think it was necessary to have instance variables for the student
# names, email list, or number of students when each can be reconstructed from
# the array of student objects.


# Reflection

# What concepts did you learn or review in this challenge?

# In this challenge, I learned about inheritance in Ruby, and got a bit of
# practice in applying it. I also learned a bit about the Date object, and got
# some practice applying that along with range definitions in case statements.

# What is still confusing to you about Ruby?

# Not confusing, precisely, but my previous experience in programming was with
# strongly typed languages - ie, you have to define what type your variable
# (integer, float, string, etc) is when you're writing the program. It's still
# a little strange to me not to have to do that.

# What are you going to study to get more prepared for Phase 1?

# I'm going to study/work on using assert statements and creating RSpec code
# instead of simple driver code. Test-driven development, basically.

# Driver code

# start_date = Date.new(2015,10,16)
# immersive_start_date = Date.new(2015,11,11)
# graduation_date = Date.new(2015,12,15)
# name = "Chorus Frogs"
# students = []
# city = "Chicago"

# cohort = GlobalCohort.new(start_date, immersive_start_date, graduation_date, name, students)

# local_cohort = LocalCohort.new(start_date, immersive_start_date, graduation_date, name, students, city)



# paul = Student.new("Paul", "email@email.email")
# bart = Student.new("Bart", "bart@simpsons.com")

# local_cohort.add_student(paul)
# local_cohort.add_student(bart)
# p cohort.students
# cohort.remove_student("Paul")
# p cohort.students
# p cohort.currently_in_phase
# p cohort.graduated?
# p cohort.city
# local_cohort.remove_student("Paul")
# p local_cohort.email_list
# p local_cohort.num_of_students
# p local_cohort.get_students

# p paul.class == Student
# p paul.name == "Paul"
# p paul.email == "email@email.email"
# paul.email = "new email"
# p paul.email == "new email"
# p cohort.class == GlobalCohort
# p local_cohort.class == LocalCohort
# p local_cohort.class.superclass == GlobalCohort


