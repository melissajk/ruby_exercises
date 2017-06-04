## Exercise 1 Short Long Short 

# def short_long_short(string1, string2)
#   if string2.length > string1.length
#     long = string2
#     short = string1
#   else
#     long = string1
#     short = string2
#   end
#   short + long + short
# end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

## Exercise 2 What Century is That? ##

# def ordinal(cardinal)
# digit = cardinal%10
#   if (1..3).include?(digit) and not (11..13).include?(cardinal%100)
#     cardinal.to_s << %w{st nd rd}[digit - 1]
#   else
#     cardinal.to_s << 'th'
#   end
# end

# def century(year)
#   if year%100 > 0
#     century_number = (year/100) + 1
#   else
#     century_number = year/100
#   end
#   ordinal(century_number)
# end

# puts century(2000) == '20th'  # All true!
# puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'

## Exercise 3 Leap Years (Part 1)

# def leap_year?(year)
#   if year%400 == 0
#     true
#   elsif year%100 == 0
#     false
#   else
#     year%4 == 0
#   end
# end
    

# puts leap_year?(400)

# Further Exploration asks to write the method to check to see if the year
# is divisible by four first - this makes for a very complicated method because
# you have to put an 'if' statement within an 'if' statement.  I gather the 
# moral of the story is to start by eliminating the least common factor and 
# working your way to the most common factor.

## Exercise 4 Leap Years (Part 2)

# def leap_year?(year)
#   if year < 1752 && year%4 == 0
#     true
#   elsif year%400 == 0
#     true
#   elsif year%100 == 0
#     false
#   else
#     year%4 == 0
#   end
# end

# puts leap_year?(400)

## Exercise 5 Multiples of 3 and 5

# def multisum(num)
#   array = (1..num).to_a
#   array.select! { |n| n%3 == 0 || n%5 == 0 }
#   array.inject { |memo,n| memo + n }
# end

# puts multisum(3) == 3  # all true!
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

## Exercise 6 Running Totals

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

## Exercise 7 Convert a String to a Number

# DIGITS = { '1'=> 1, '2'=> 2, '3'=>3, '4'=>4,
#           '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8,
#           '9'=> 9, '0'=> 0
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
  
#   value = 0
#   digits.each { |digit| value = 10 * value + digit}
#   value
# end
  
# ## Exercise 8 Convert a String to a signed number!

# def string_to_signed_integer(string)
#   if string[0] == '-'
#     0 - string_to_integer(string.delete('-'))
#   elsif string[0] == '+'
#     string_to_integer(string.delete('+'))
#   else
#     string_to_integer(string)
#   end
# end

## Exercise 9 Convert a number to a string!

# DIGITS = ['0','1','2','3','4','5','6','7','8','9']

# def integer_to_string(integer)
#   string = ''
#   loop do
#     digit = integer%10
#     string.prepend(DIGITS[digit])
#     integer /= 10
#     break if integer == 0
#   end
#   string
# end

# ## Exercise 10 Convert a signed number to a string

# def signed_integer_to_string(integer)
#   string = integer_to_string(integer.abs)
#   if integer < 0 
#     '-' + string
#   elsif integer > 0 
#     '+' + string
#   else
#     string
#   end
# end
