# add the appropriate accessor methods so that @name is capitalized on assignment

class Person
  attr_reader :name
  
  def name=(name)
    @name = name.capitalize
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name

# sometimes it's useful to use the long-hand setter method so that you can format
# the information as it's entered into the class
