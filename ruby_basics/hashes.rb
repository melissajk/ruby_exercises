## Exercise 1 -- First Car ##

# car = {
#   type: 'sedan',
#   color: 'blue',
#   mileage: 80_000
# }  

## Exercise 2 -- Adding the Year ##

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000
# }

# car[:year] = 2003
# puts car

## Exercise 3 -- Broken Odometer ##

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
#   year:    2003
# }

# car.delete(:mileage)
# puts car

## Exercise 4 -- What Color? ##

# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }

# puts car[:color]

## Exercise 5 -- Labeled numbers ##

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |key,value|
#   puts "A #{key} number is #{value}."
# end

## Exericse 6 -- Divided by Two ##

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# half_numbers = numbers.map { |key,value| value / 2}

# p half_numbers

## Exercise 7 -- Low, Medium or High? ##

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select { |key,value| value < 25}

# p low_numbers

## Exericse 8 -- Low or Nothing ##

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                 value < 25
#               end

# p low_numbers
# p numbers

## Exercise 9 -- Multiple Cars ##

# automobiles = {
#   car: { 
#     type: "sedan", 
#     color: "blue",
#     year: 2003
#   },
#   truck: {
#     type: "pickup",
#     color: "red",
#     year: 1998
#   }
# }

# p automobiles

## Exercise 10 -- Which Collection? ##

# car = [[type: 'sedan'], [color: 'blue'], [year: 2003]]

# puts car 

