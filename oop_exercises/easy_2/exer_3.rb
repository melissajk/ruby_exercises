class House
  include Comparable
  attr_reader :price

  def initialize(price)
    @price = price
  end
  
  def <=>(other)
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Include the Comparable mixin, and define one method '<=>'

# Further Exploration 

# From outside of the class it is not obvious what criteria is being used to 
# judge if home1 < home2 or vice versa.  It could be a comparison in floors,
# square footage or a group of things. 

# I think it's best to use the Comparable class where numbers are being compared to other
# numbers. 

