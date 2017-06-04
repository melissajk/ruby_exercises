
## Exercise 1 -- Searching 101 ##

# num_array = []
# puts "==> Enter the 1st number:"
# num_array << gets.to_i
# puts "==> Enter the 2nd number:"
# num_array << gets.to_i
# puts "==> Enter the 3rd number:"
# num_array << gets.to_i
# puts "==> Enter the 4th number:"
# num_array << gets.to_i
# puts "==> Enter the 5th number:"
# num_array << gets.to_i
# puts "==> Enter the last number:"
# last_num = gets.to_i

# if num_array.include?(last_num)
#   puts "The number #{last_num} appears in #{num_array}."
# else
#   puts "The number #{last_num} does not appear in #{num_array}"
# end


## Exercise 2 -- Arithmetic Integer ##

# puts "==> Enter the first number:"
# first_num = gets.to_i
# puts "==> Enter the second number:"
# sec_num = gets.to_i

# puts "==> #{first_num} + #{sec_num} = #{first_num + sec_num}"
# puts "==> #{first_num} - #{sec_num} = #{first_num - sec_num}"
# puts "==> #{first_num} * #{sec_num} = #{first_num * sec_num}"
# puts "==> #{first_num} / #{sec_num} = #{first_num / sec_num}"
# puts "==> #{first_num} % #{sec_num} = #{first_num % sec_num}"
# puts "==> #{first_num} ** #{sec_num} = #{first_num ** sec_num}"


## Exercise 3 -- Counting the Number of Characters ##

# puts "Please write word or multiple words."
# string = gets.chomp
# chars = string.gsub(" ","").length
# puts "There are #{chars} characters in #{string.inspect}."

## Exercise 4 -- Multiplying Two Numbers ##

# def multiply(num1,num2)
#   puts num1 * num2
# end

# multiply(5, 3)

## Exercise 5 -- Squaring an Argument ##

# def square(num)
#   puts multiply(num,num)
# end

# square(5)
# square(-8)

## Exercise 6 -- Exclusive Or

# def xor?(item1, item2)
#   case
#   when item1 == true && item2 == false
#     true
#   when item1 == false && item2 == true
#     true
#   when item1 == true && item2 == true
#     false
#   when item1 == false && item2 == false
#     false
#   end
# end

# LS answer -- Much better!

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

## Exercise 7 -- Odd Lists

# def oddities(array)
#   odd_array = []
#   binding.pry
#   array.each_with_index do |element, index|
#     if index.even?
#       odd_array << element
#     end
#   end
#   odd_array
# end

# def oddities(array)
#   array.select { |element| array.index(element).even? }
# end
    
# puts oddities([2, 3, 4, 5, 6])  == [2, 4, 6]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []

## Exercise 8 Palindrome Strings (Part 1)

# def palindrome?(string)
#   string == string.reverse
# end

# puts palindrome?('madam') == true
# puts palindrome?('Madam')  == false       # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

# def palindrome_array?(array)
#   array == array.reverse
# end

# puts palindrome_array?([1,2,2,1]) # true
# puts palindrome_array?(['a','b','c']) # false
# puts palindrome_array?(['z','u','m','m','u','z']) # true

# def palindrome?(value)
#   value == value.reverse
# end

# puts palindrome?('356653') # true
# puts palindrome?([1,2,2,1]) # true 
# puts palindrome?(['z','u','m','m','u','z']) # true

## Exercise 9 Palindromic Strings (Part 2)

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

## Exercise 10 Palindromic Numbers

# def palindromic_number?(number)
#   palindrome?(number.to_s)
# end

# puts palindromic_number?(34543) == true
# puts palindromic_number?(123210) == false
# puts palindromic_number?(22) == true
# puts palindromic_number?(5) == true

# Extension -- if the number begins with 0's, then the method won't work because
# a number with zeros at the beginning is code for something else (015451 returns 6953)





