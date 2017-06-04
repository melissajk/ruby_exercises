## Exercise 1 -- Greeting through methods (Part 1) ##

# def hello
#   return "Hello"
# end

# def world
#   return "World"
# end

# puts "#{hello} #{world}"
## So... you can use this #{format} to call variables as well as methods!


## Exercise 2 -- Greeting through methods (part 2) ##

# def hello
#   'Hello'
# end

# def world
#   'World'
# end

# def greet 
#   puts hello + ' ' + world
# end

# greet

## Exercise 3 -- Make and Model ##

# def car(make, model)
#   puts "#{make} #{model}"
# end

# car('Toyota', 'Corolla')
# car('Honda', 'Civic')

## Exercise 4 -- Day or Night? ##

# daylight = [true, false].sample

# def time_of_day(daylight)
#   if daylight
#     puts "It's daytime!"
#   else
#     puts "It's nighttime!"
#   end
# end

# time_of_day(daylight)

## Exercise 5 -- Naming Animals ##

# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."

## Exercise 6 -- Name not Found ##

# def assign_name(name='Bob')
#   name
# end

# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'

## Exercise 7 -- Multiply the Sum ##

# def add(num1,num2)
#   num1 + num2
# end

# def multiply(num1,num2)
#   num1 * num2
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

## Exercise 8 -- Random Sentence ##

# def name(names)   ## I assigned a variable and returned the random selection 
#   names.sample      ## assigned to the variable, but this is much tidier. 
# end

# def activity(activities)
#   activities.sample
# end

# def sentence(name, activity)
#   "#{name} went #{activity} today!"
# end

# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# puts sentence(name(names), activity(activities))

## Exercise 9 -- Print Me (Part 1) ##

# def print_me
#   puts "I'm printing within the method!"
# end

# print_me

## When you use 'puts' inside of a method, it outputs one thing and returns 'nil'
## This method's return value will be 'nil'

## Exercise 10 -- Print Me (Part 2) ##

# def print_me
#   "I'm printing the return value!"
# end

# puts print_me

## In this method 'print_me' only returns the text within.  It isn't displayed on
##  the screen, however, until called with a 'puts'


