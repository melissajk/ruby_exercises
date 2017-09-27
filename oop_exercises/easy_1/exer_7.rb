class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678

# The best method to fix this code is to add self prefix to the mileage in 
# #increment_mileage.  It's generally safer to use a self. receiver when you 
# have a setter method unless you have a good reason to access the variable 
# directly. This is because accessing the ivar directly bypasses any checks or
# operations performed by the setter. 

