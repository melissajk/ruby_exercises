module Moveable
  def walk
    if self.class == Noble
      puts "#{full_name} #{gait} forward"
    else
      puts "#{name} #{gait} forward"
    end
  end
end

class Person
  include Moveable
  attr_reader :name
  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "strolls"
  end
end

class Noble 
  include Moveable
  attr_reader :title, :name
  
  def initialize(name, title)
    @name = name
    @title = title
  end
  
  def full_name
    "#{title} #{name}"
  end
  
  private
  
  def gait
    "struts"
  end
end

class Cat
  include Moveable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Moveable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
mike.walk

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

p byron.name
# => "Byron"
p byron.title
# => "Lord"

# Further Exploration: A different method besides assigning a #to_s method to
# every single class.  To keep the #name method in the Noble class, I had to 
# create a #full name method and adjust the module to respond to it.  

# This still doesn't seem like a very tidy solution. 


