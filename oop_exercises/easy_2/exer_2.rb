module Drivable
  def drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive

# I fixed this code by changing def self.drive...end to def drive...end
# Methods in mixin modules should be defined without using 'self' 
