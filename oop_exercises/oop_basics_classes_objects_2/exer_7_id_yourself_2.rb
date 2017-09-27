class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def to_s
    "I'm #{name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty # I'm Sophie!

# the original string representation of kitty ==> #<Cat:0x000000027a5a10>
# in this case we override the #to_s method to something a bit more readable for 
# humans with our custom #to_s method. 
