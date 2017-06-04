## Exercise 1 -- Repeat yourself ##

# def repeat(string, number)
#   number.times do 
#     puts string
#   end
# end

# repeat('Mine!', 8)


## Exercise 2 -- Odd ##

# def is_odd?(num)
#   (num.abs)%2.0 != 0
# end

# def is_odd?(num)
#   num.abs.remainder(2) == 1
# end
  
# puts is_odd?(3)
# puts is_odd?(6)
# puts is_odd?(-17)    
# puts is_odd?(-8)  

## Exericise 3 -- List of Digits ##

# def digit_list(num)
#   ## assumes that 'num' is a positive integer 
#   list = num.to_s.split(//)
#   list.map! do |element|
#     element.to_i
#   end
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

## LS solution ##
# def digit_list(number)
#   number.to_s.chars.map(&:to_i)   # (&:to_i) is shorthand for { |char| char.to_i}
# end


## Exercise 4 -- How Many? ##

# def count_occurrences(vehicles)
#   elements = vehicles.uniq
#   elements.each do |element|
#     puts "#{element} => #{vehicles.count(element)}"
#   end
# end
  
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

## I need to come up with a method that only iterates through the array once!

# Exericse 5 -- Reverse it (Part 1)

# def reverse_sentence(string)
#   string.split(' ').reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

## Exercise 6 -- Reverse It (Part 2) ##

# def reverse_words(words)
#   word_ary = words.split(' ')
#   word_ary.map! do |word|
#     if word.length >= 5
#       word.reverse
#     else
#       word
#     end
#   end
#   word_ary.join(' ')
# end

# puts reverse_words('Professional')          
# puts reverse_words('Walk around the block')
# puts reverse_words('Launch School')   
  
## Exercise 7 -- Stringy strings ##

# def stringy(num)
#   if num < 2
#     return num.to_s
#   elsif num.even?
#     "10" *  (num / 2)
#   else 
#     "10" * ((num - 1) / 2) + "1"
#   end
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

## LS solution ##

# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end

## modification

# def stringy(size, num=1)
#   numbers = []
  
#   size.times do |index|
#     if num == 1
#       number = index.even? ? 1 : 0
#     else 
#       number = index.even? ? 0 : 1
#     end
#     numbers << number
#   end
#   numbers.join
# end

# puts stringy(12,0)


## Exercise 8 -- Array Average ##

# def average(numbers)
#   sum = numbers.inject(0) { |memo,n| memo + n}
#   sum / numbers.length
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

## Exercise 9 -- Sum of Digits ##

# def sum(num)
#   list = num.to_s.split(//)
#   list.map! do |element|
#     element.to_i
#   end
#   list.inject(0) {|memo,n| memo + n}
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

## Exercise 10 -- What's My Bonus? ##

# def calculate_bonus(salary,boolean)
#   if boolean == true
#     salary / 2
#   else
#     0
#   end
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# LS solution uses a ternary operator...

# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end
