module Moveable
  def walk
    puts "#{self} #{gait} forward"
  end
end

class Person
  include Moveable
  attr_reader :name
  def initialize(name)
    @name = name
  end
  
  def to_s
    name
  end
  
  private

  def gait
    "strolls"
  end
end

class Noble 
  include Moveable
  attr_reader :name, :title
  
  def initialize(name, title)
    @name = name
    @title = title
  end
  
  def to_s
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
  
  def to_s
    name
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
  
  def to_s
    name
  end

  private

  def gait
    "runs"
  end
end

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

p byron.name
# => "Byron"
p byron.title
# => "Lord"

# The easiest way to accomplish this task is to provide a method that returns
# both the name and the title for the Noble class while just returning a name
# for the other classes.  A #to_s method will do this!

# There is a mention of #to_s in Walkable.walk... but it's hidden
# When you call #{self} on a string (with interpolation), it's actually #{self.to_s}

