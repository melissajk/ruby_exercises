class Cat
  attr_reader :name
  def initialize(name)
    @name = name
  end
  
  def greeting
    puts "Hello, my name is #{name}!"
  end
end

kitty = Cat.new("Sophie")
kitty.greeting

# a getter method (attr_reader :name) allows us to invoke 'name' instead of 
# @name and it also allows us to invoke the 'name' outside of the class via the object
# kitty.name  --> "Sophie"

