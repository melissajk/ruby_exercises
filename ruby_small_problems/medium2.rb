## Exercise 1 -- Longest Sentence
# text = File.read('getsburg_address.txt')

# def longest_sentence(text)
#   sentence_array =[]
#   words = text.split
#   loop do
#     array = Array.new
#     loop do
#       break if words.empty?
#       word = words.shift
#       array << word
#       break if word.end_with?('.','?','!')
#     end
#     break if array.empty?
#     sentence_array << array
#   end
#   result = sentence_array.sort_by { |array| array.length }.last
#   result.join(' ') + ' ' + result.size.to_s + ' words'
# end

# puts longest_sentence(text)

## LS Solution

# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

## Exercise 2 -- Now I know my ABC's 

# BLOCKS = { 'A' => 'N', 'B' => 'O', 'C' => 'P', 'D' => 'Q', 'E' => 'R', 'F' => 'S',
#           'G' => 'T', 'H' => 'U', 'I' => 'V', 'J' => 'W', 'K' => 'X', 'L' => 'Y',
#           'M' => 'Z', 'N' => 'A', 'O' => 'B', 'P' => 'C', 'Q' => 'D', 'R' => 'E',
#           'S' => 'F', 'T' => 'G', 'U' => 'H', 'V' => 'I', 'W' => 'J', 'X' => 'K',
#           'Y' => 'L', 'Z' => 'M'
# }

# def block_word?(word)
#   word.chars.each do |char|
#     return false if word.include?(BLOCKS[char.upcase]) || word.count(char) >= 2
#   end
#   return true
# end

# puts block_word?('BATCH') == true
# puts block_word?('BUTCH') == false
# puts block_word?('jest') == true

## LS Solution

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

## Exercise 3 Lettercase percentage ratio

# def letter_percentages(string)
#   result = {}
#   total_chars = string.size
#   result[:lowercase] = string.chars.count { |char| char =~ /[a-z]/ } / total_chars.to_f * 100
#   result[:uppercase] = string.chars.count { |char| char =~ /[A-Z]/ } / total_chars.to_f * 100
#   result[:neither] = string.chars.count { |char| char =~ /[^a-zA-Z]/} / total_chars.to_f * 100
#   result
# end

# puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

## All true!!

## Exercise 4 Matching Parentheses?

# def balanced?(string)
#   return false if string.end_with?('(') || string.start_with?(')')
#   string.count('(') == string.count(')')
# end

# puts balanced?('What (is) this?') == true  ## All true!  
# puts balanced?('What is) this?') == false
# puts balanced?('What (is this?') == false
# puts balanced?('((What) (is this))?') == true
# puts balanced?('((What)) (is this))?') == false
# puts balanced?('Hey!') == true
# puts balanced?(')Hey!(') == false
# puts balanced?('What ((is))) up(') == false

## LS Solution -- Very clever! 

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

## Exercise 5 Triangle Sides

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
#   sides.sort!
  
#   case 
#   when sides.last > sides[0] + sides[1], sides.include?(0)
#     :invalid
#   when sides.all? { |side| side == sides[0] }
#     :equilateral
#   when side1 == side2 || side2 == side3 || side3 == side1
#     :isosceles
#   else
#     :scalene
#   end
# end

# puts triangle(3, 3, 3) == :equilateral  ## all true!
# puts triangle(3, 3, 1.5) == :isosceles
# puts triangle(3, 4, 5) == :scalene
# puts triangle(0, 3, 3) == :invalid
# puts triangle(3, 1, 1) == :invalid

## Exercise 6 Tri - Angles

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
  
#   case
#   when sides.reduce(:+) < 180, sides.include?(0)
#     :invalid
#   when sides.include?(90)
#     :right
#   when sides.all? { |side| side < 90 }
#     :acute
#   when sides.any? { |side| side > 90 }
#     :obtuse
#   end
# end

# puts triangle(60, 70, 50) == :acute  #all true!
# puts triangle(30, 90, 60) == :right
# puts triangle(120, 50, 10) == :obtuse
# puts triangle(0, 90, 90) == :invalid
# puts triangle(50, 50, 50) == :invalid

## Exercise 7 Unlucky Days

# require 'date'

# def friday_13th?(year)
#   result = []
#   1.upto(12) do |month|
#     if Date.new(year, month, 13).friday?
#       result << month
#     end
#   end
#   result.size
# end

# puts friday_13th?(2015) == 3  # all true
# puts friday_13th?(1986) == 1
# puts friday_13th?(2019) == 2

## Exercise 8 Next Featured Number Higher than a given value

# featured number = odd number that is a multiple 7, digits occur only once
# input = single integer
# output = next highest featured number (integer)
# if there is no next highest featured number - issue an error message

# starting at the input # begin to loop through numbers that may satisfy 
# these tests - iterating through multiples of seven. 
# tests: number%7 == 0, number.odd?, number.to_s.count(chars) 

# def find_next_multiple(num)
#   loop do
#     num += 1
#     break if num % 7 == 0
#   end
#   num
# end

# def repeats_numbers?(num)
#   num.to_s.chars do |char|
#     return true if num.to_s.count(char) >= 2
#   end
#   false
# end

# def featured(num)
#   if num % 7 == 0
#     candidate = num + 7
#   else
#     candidate = find_next_multiple(num)
#   end
  
#   loop do
#     return candidate if candidate.odd? && repeats_numbers?(candidate) == false
#     candidate += 7
#     break if candidate >= 9_876_543_210 # last unique number
#   end
#   'There is no possible number that fulfills those requirements'
# end


## LS solution  A much more compact solution! 

# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14
#     break if number >= 9_876_543_210
#   end
#   'There is no possible number that fulfills those requirements.'
# end

# puts featured(12) == 21
# puts featured(20) == 21
# puts featured(21) == 35
# puts featured(997) == 1029
# puts featured(1029) == 1043
# puts featured(999_999) == 1_023_547
# puts featured(999_999_987) == 1_023_456_987

# puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

## Exercise 9 Bubble Sort

# Write a method that does a bubble sort of a array
# multiple iterations through the array
# each pass - each pair of consecutive elements is compared
# if the first is greater than the second, the elements are swapped
# continue until one complete pass with no swaps
# the sort will be in-place ==> the array will be mutated 
# assume that the array contains at least two elements

# iteration within a loop
# the loop breaks when there is a full iteration with no swaps
# if element[i] > element[i + 1] then element[i] = element[i + 1]

# def bubble_sort!(array)    # optimized!
#   loop do
#     swapped = false
#     n = array.length - 1
#     0.upto(n) do |index|
#       if array[index] > array[index + 1]
#         array[index], array[index + 1] = array[index + 1], array[index]
#         swapped = true
#       end
#       index += 1
#       n -= 1
#       break if index >= array.size - 1
#     end
#     break unless swapped
#   end
#   array    #LS has 'nil' at this point, instead of 'array'
# end

# array = [5, 3]       ## all are true
# bubble_sort!(array)
# puts array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# puts array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

## Exercise 10 Sum Square - Square Sum

# a = square of the sum of the first n pos numbers ( 1 + 2 + 3)**2
# b = sum of the squares of the first n pos numbers ( 1**2 + 2**2 + 3**2)
# difference = a - b OR b - a
# input - just a number (numbers upto input number)
# output - just a number (which is the difference)
# we can assume that all numbers are positive

# need a method to compute a, also a method to compute b and then another
# method to find the difference

# def sum_square_difference(num)
#   num_array = []       
#   1.upto(num) do |number|     ## all of the work below could have been done within 
#     num_array << number         # this method!  See LS solution below
#   end
#   square_of_sums = num_array.inject(:+)**2
  
#   sum_of_squares = num_array.map { |number| number**2 }.inject(:+)
  
#   square_of_sums - sum_of_squares
# end

# puts sum_square_difference(3) == 22
#   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# puts sum_square_difference(10) == 2640
# puts sum_square_difference(1) == 0
# puts sum_square_difference(100) == 25164150

# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end

