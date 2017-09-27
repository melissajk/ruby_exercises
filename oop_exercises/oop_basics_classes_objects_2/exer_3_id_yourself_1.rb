class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify  # #<Cat:0x00000000e815c0 @name="Sophie">

# self is used because it refers to the calling object



