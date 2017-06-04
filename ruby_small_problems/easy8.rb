## Exercise 1 Sum of Sums

# def sum_of_sums(array)
#   sum = 0
#   loop do 
#     sum += array.inject { |memo, num| memo + num }
#     array.pop
#     break if array.empty?
#   end
#   sum
# end

# puts sum_of_sums([3, 5, 2]) == 21
# puts sum_of_sums([1, 5, 7, 3]) == 36
# puts sum_of_sums([4]) == 4
# puts sum_of_sums([1, 2, 3, 4, 5]) == 35

## Exercise 2 Mad Libs

# def mad_libs
#   puts "Enter a noun: "
#   noun = gets.chomp
#   puts "Enter a verb: "
#   verb = gets.chomp
#   puts "Enter an adjective: "
#   adj = gets.chomp
#   puts "Enter an adverb: "
#   adv = gets.chomp
#   puts "We don't #{verb} #{adv} in the #{noun}!  That's for #{adj} losers."
# end

# mad_libs

## Exercise 3 Leading Substrings

# def substrings_at_start(string)
#   substring_array = []
#   index = 0
#   loop do
#     substring_array[index] = string[0..index]
#     break if index == string.size - 1
#     index += 1
#   end
#   substring_array
# end

# puts substrings_at_start('abc') == ['a', 'ab', 'abc']
# puts substrings_at_start('a') == ['a']
# puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

## Exercise 4 All Substrings

# def substrings(string)
#   result = []
#   string.size.times do
#     result << substrings_at_start(string)
#     string.delete!(string[0])
#   end
#   result.flatten
# end

## Mine works... but LS Solution doesn't mutate the string in the process 

# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end

## Exercise 5 Palendromic Substrings

# def palindromes(string)
#   result = []
#   substrings = substrings(string)
#   substrings.each do |element|
#     result << element if element == element.reverse && element.size > 1
#   end
#   result
# end

## Exercise 6 fizzbuzz

# def fizzbuzz(num1, num2)
#   num1.upto(num2) do |num|
#     if num%3 == 0 && num%5 == 0
#       puts 'FizzBuzz'
#     elsif num%5 == 0
#       puts 'Buzz'
#     elsif num%3 == 0
#       puts 'Fizz'
#     else
#       puts num
#     end
#   end
# end

# fizzbuzz(1, 15) 

# ## LS Solution -- Do they use two different methods and a case statement to increase
# ## speed of calculation?

# def fizzbuzz(starting_number, ending_number)
#   result = []
#   starting_number.upto(ending_number) do |number|
#     result << fizzbuzz_value(number)
#   end
#   puts result.join(', ')
# end

# def fizzbuzz_value(number)
#   case
#   when number % 3 == 0 && number % 5 == 0
#     'FizzBuzz'
#   when number % 5 == 0
#     'Buzz'
#   when number % 3 == 0
#     'Fizz'
#   else
#     number
#   end
# end

## Exercise 7 Double Char (Part 1)

# def repeater(string)
#   new_string = ''
#   string.each_char do |char|
#     new_string << char * 2
#   end
#   new_string
# end

# puts repeater('Hello') == "HHeelllloo"

## Exercise 8 Double Char (Part 2)

# CONSONANTS = %(bcdfghjklmnpqrstvwxyz)

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end

# puts double_consonants('String') == "SSttrrinngg" # => true

## Exercise 9 Convert number to a reversed array of digits

# def reversed_number(integer)
#   integer.to_s.reverse.to_i
# end

# puts reversed_number(12345) == 54321  # => true

## Exercise 10 Get the Middle Character

# def center_of(string)
#   size = string.size
#   if size.even?
#     string[(size/2 - 1)..size/2]
#   else
#     string[(size - 1)/2]
#   end
# end

# puts center_of('I love ruby') == 'e' # => true
# puts center_of('Launchschool') == 'hs' # => true

