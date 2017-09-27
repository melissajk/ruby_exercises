class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

# Don't forget!  Class methods are prepended with self.method_name
# We invoke methods on the class itself

# Further Exploration...
# If you call kitty.class.generic_greeting, you get "Hello! I'm a cat!
# This is because when you chain the kitty and #class together, the result is 
# 'Cat', which is chained to #generic_greeting

