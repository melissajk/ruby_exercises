# multiply @age by two on assignment and by 2 again when returned by the getter 
# method

class Person
  
  def age=(age)
    @age = age * 2
  end
  
  def age
    @age * 2
  end
end

person1 = Person.new
person1.age = 20
puts person1.age