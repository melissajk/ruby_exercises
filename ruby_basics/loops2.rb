## Exercise 1 -- Even or Odd? ##

# count = 1

# loop do until count > 5
#     if count.odd? 
#       puts "#{count} is odd!"
#     else 
#       puts "#{count} is even!"
#     end
#     count += 1
#   end
# end

## Exercise 2 -- Catch the Number ##

# loop do
#   number = rand(100)
#   puts number
#   break if number < 10
# end

## Exercise 3 -- Conditional Loop ##

# process_the_loop = [true, false].sample

# if process_the_loop 
#   loop do 
#     puts "The loop was processed!"
#     break
#   end
# else 
#   puts "The loop wasn't processed!"
# end

## Exercise 4 -- Get the Sum ##

# puts 'What does 2 + 2 equal?'
# loop do
#   answer = gets.chomp.to_i
#   if answer == 4 
#     puts "That's Correct"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

## Exercise 5 -- Insert Numbers ##

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers

## Exercise 6 -- Empty the Array ##

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end

# loop do
#   puts names.pop
#   break if names.empty?
# end

## Exercise 7 -- Stop Counting ##

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# Further Exploration

# 5.times do |index|
#   puts index
#   break if index == 4   # => Five values will be printed
# end

# 5.times do |index|
#   puts index
#   break if index < 7   # => Breaks after the first iteration (returns 0)
# end

## Exercise 8 -- Only Even ##

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?  ## 'next' had to be put here so that it was called before the 'puts number' request
#   puts number
# end

## Exercise 9 -- First to Five

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next if (number_a || number_b) < 5 
#   puts "5 was reached!"
#   break
# end

## Exercise 10 -- Greeting ##

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

