class Transform
  def initialize(data)
    @data = data
  end
  
  def uppercase
    @data.upcase
  end
  
  def self.lowercase(str)
    str.downcase
  end
    
end

my_data = Transform.new('abc')
puts my_data.uppercase # ABC
puts Transform.lowercase('XYZ') #xyz

# #uppercase is an instance method that is called on the object of an instance 
# variable (@data)

# self.lowercase is a class method that requires an argument because it has
# no access to instance variables!  

# For future reference: A class method is also called a "singleton method"

