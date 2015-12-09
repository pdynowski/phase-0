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
class Student
  def initialize(name, email)
    @name = name;
    @email = email
  end
  attr_reader :name
  attr_accessor :email
end

class GlobalCohort
  #your code here

end

class LocalCohort < GlobalCohort
  #your code here

end


# Refactored Solution



paul = Student.new("Paul", "email@email.email")
p paul.class == Student
p paul.name == "Paul"
p paul.email == "email@email.email"
paul.email = "new email"
p paul.email == "new email"


# Reflection