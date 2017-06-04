## Exercise 1 Combine two lists

# def interleave(array1, array2)
#   array1.zip(array2).flatten
# end

# puts interleave([1, 2, 3], ['a', 'b', 'c'])

## Exercise 2 Lettercase Counter

# def letter_case_count(string)
#   counting_hash = { :lowercase => 0, :uppercase => 0, :neither => 0}
#   counting_hash[:lowercase] = string.count "/[a-z]/"
#   counting_hash[:uppercase] = string.count "/[A-Z]/"
#   counting_hash[:neither] = string.length - counting_hash[:lowercase] -
#                             counting_hash[:uppercase]
#   counting_hash
# end

# puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

## Exercise 3 Capitalize Words

# def word_cap(string)
#   string.split.map { |word| word.capitalize }.join(' ')
# end

# puts word_cap('four score and seven') == 'Four Score And Seven'
# puts word_cap('the javaScript language') == 'The Javascript Language'
# puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
 
## Exercise 4  Swap Case

# ALPHABET = %(abcdefghijklmnopqrstuvwxyz)

# def swapcase(string)
#   new_string = ''
#   string.each_char do |char|
#     ALPHABET.include?(char) ? new_string << char.upcase : new_string << char.downcase
#   end
#   new_string
# end

# puts swapcase('CamelCase')
# puts swapcase('Tonight on XYZ-TV')

## LS Solution

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end

## Exercise 5 Staggered Caps (Part 1)

# def staggered_case(string)
#   new_string = ''
#   string.chars.each_with_index do |char, index|
#     if index.even? 
#       new_string << char.upcase
#     else
#       new_string << char.downcase
#     end
#   end
#   new_string
# end

# puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

## Exercise 6 Staggered Caps (Part 2)

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper 
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#     end
#   end
#   result
# end

# puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# puts staggered_case('ALL CAPS') == 'AlL cApS'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

## Exercise 7 Multiplicative Average

# def show_multiplicative_average(array)
#   result = array.inject { |memo, num| num * memo } / array.size.to_f
#   sprintf"The result is %.3f", result
# end

# puts show_multiplicative_average([3, 5])
# puts show_multiplicative_average([2, 5, 7, 11, 13, 17])

## Exercise 8 Multiply Lists

# def multiply_list(array1, array2)
#   multiplied = []
#   array1.each_with_index do |num, index|
#     multiplied << num * array2[index]
#   end
#   multiplied
# end

# puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# def multiply_list(array1, array2)
#   array1.zip(array2).map { |array| array[0] * array[1] }.flatten
# end

# puts multiply_list([3, 5, 7], [9, 10, 11]) # all true!

## Exercise 9 Multiply All Pairs

# def multiply_all_pairs(array1, array2)
#   products = []
#   array1.each do |element|
#     array2.each do |num|
#       products << element * num
#     end
#   end
#   products.sort
# end

# puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

## LS Solution -- Way more compact!!

# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
# end

## Exercise 10 The End is Near, But not here

# def penultimate(string)
#   words = string.split
#   words[-2]
# end

# puts penultimate('last word') == 'last'
# puts penultimate('Launch School is great!') == 'is'

# def middle_word(string)
#   words = string.split
#   return string if words.size < 3
#   if words.size.even? 
#     words[(words.size/2) - 1 ]
#   else
#     words[(words.size - 1)/2]
#   end
# end

# puts middle_word("Don't bring me down")

