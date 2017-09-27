class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
    @colors = colors
  end
  
  def to_s
    "My cat #{@name} is #{@age} years old and has #{@colors} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# Further Exploration -- 
# If we added the color attribute to the Pet class, we could omit the initialize
# method from Cat.

# We would be able to omit the initialize method because a new object from the
# Cat class would default to the init method from the Pet class, and this class 
# would have all three parameters. 

# I don't think that it would be a good idea to modify Pet in this way because 
# it will limit the flexibility of the Pet class in the future.  What if someone
# wants to include a reptile class?  I don't think that a color parameter would 
# suit a reptile class well. 

# Would it be possible to make 'colors' and optional parameter?  Perhaps it 
# could be made into a module.



