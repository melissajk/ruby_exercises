## Exercise 1 -- Runaway Loop ##

# loop do
#   puts 'Just keep printing...'
#   break
# end


## Exercise 2 -- Loopception ##

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'


## Exercise 3 -- Control the Loop ##

# iterations = 1

# loop do 
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end


## Exercise 4 -- Loop on Command ##

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer.downcase == 'yes'
# end

## Exercise 5 -- ##

# say_hello = true
# counter = 0

# while say_hello
#   puts 'Hello!'
#   counter += 1
#   if counter == 5
#     say_hello = false
#   end
# end

## Exercise 6 -- Print While ##

# numbers = []

# while numbers.length < 5
#   numbers << rand(100)
# end

# puts numbers

## Exercise 7 -- Count Up ##

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

## Exercise 8 -- Print Until ##

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count == 5
#   puts numbers[count]
#   count += 1
# end

## Exercise 9 -- That's Odd ##

# for i in 1..100
#   puts i if i%2 != 0
# end

## Exercise 10 -- Greet Your Friends ##

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends 
#   puts "Hello, #{friend}!"
# end 
