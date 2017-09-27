class Cat
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet

# setter methods look like this when written in longhand:
# def name=(name)
#   @name = name
# end

# OR they can be written in shorthand with the attr_writer method
