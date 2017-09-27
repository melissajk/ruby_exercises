class Vehicle
  attr_reader :make, :model
  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

mazda = Car.new("Mazda","5")
toyota = Truck.new("Toyota", "Tacoma", "Payload #")
honda = Motorcycle.new("Honda", "Rebel")

puts mazda
puts toyota
puts honda

# Further Exploration:
# I don't think that it makes sense to create a #wheels in the Vehicle class if
# each sub-class is going to override it.  Perhaps it should be another attribute 
# because the number of wheels for different vehicles can vary, especially among trucks. 

