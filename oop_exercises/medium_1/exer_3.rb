# Make changes to the classes so that the following requirements are filled.
# 1. Graduate students have the option to use on campus parking while undergrads
#     do not
# 2. Graduates and undergrads have a year ana a name associated with them.
# ** Do not alter or add more than five lines of code

class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking) 
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
  end
end

fred = Undergraduate.new('Fred', 3)
p fred
wilma = Graduate.new("Wilma", 1, true)
p wilma

# - Undergraduate and Graduate should inherit from Student
# - You can use super to initialize an Undergraduate object 
# - Super calls a method further up the inheritance chain that has the same name
#   as the enclosing method(the method where we are calling the keyword 'super')
# - You can use super(name, year) + @parking to initialize a graduate object. 
# - You can use super() for when you are calling the superclass method, but no 
#  arguments are passed to the superclass method at all

# Further Exploration - Think of a way to use super() in another student-related class
