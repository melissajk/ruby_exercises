# change the following code so that phone_number can't be modified from outside
# the class

class Person
  attr_reader :phone_number

  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(1234567899)
puts person1.phone_number

person1.phone_number = 9987654321
puts person1.phone_number

# always using attr_accessor can have negative effects, such as being able to 
# modify personal info from outside of the class.  Make sure that you're
# using the correct methods so that information can't be modified. 

