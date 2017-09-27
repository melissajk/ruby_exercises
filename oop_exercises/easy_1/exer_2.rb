class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

#  The error is that @name.upcase! is a destructive call.  If you want to go 
#  with all caps on the name, then it's better to do it inside of the string 
#  interpolation.  Destructively altering the object associated with @name will 
#  also alter the object associated with 'name'.
#  **Remember @name and name occupy the same object in memory

# Further Exploration

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# @name and name are not pointing to the same object.  @name is pointing to the
# string version of 42, so when name (the integer) is incremented by one, @name
# is not affected. 

puts name.object_id  # 87
puts fluffy.name.object_id  #15262280





