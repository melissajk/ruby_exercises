# add the correct accessor methods - @age should only be visible to instances
# of Person

class Person
  attr_writer :age
  
  def older_than?(other)
    age > other.age
  end
  
  protected
  
  attr_reader :age
  
end

person1 = Person.new
person1.age = 17

person2 = Person.new
person2.age = 26

puts person1.older_than?(person2)

# when a method is private, only the class, and not instances of the class
# can access it.  However, when it's protected, only instances of the class
# and subclass can access it. 