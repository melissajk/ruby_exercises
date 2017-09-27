# accept a string containing a first and last name
# split the name into two ivars in the setter method
# joined in the getter method

class Person
  
  def name=(name)
    @first_name, @last_name = name.split
  end
  
  def name
    @first_name + ' ' + @last_name
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name