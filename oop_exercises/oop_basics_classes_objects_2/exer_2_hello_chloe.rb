class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def rename(new_name)
    self.name = new_name
  end
end

kitty = Cat.new('Sophie')
p kitty.name
kitty.rename('Chloe')
p kitty.name

# When invoking setter methods we're required to use 'self' so that Ruby knows
# the difference between initializing a local variable and invoking a setter method
