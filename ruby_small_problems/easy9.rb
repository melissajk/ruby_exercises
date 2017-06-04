## Exercise 1 Welcome Stranger

# def greetings(name_ary, work_hash)
#   puts "=> Hello, #{name_ary.join(' ')}!\
#   Nice to have a #{work_hash[:title]} #{work_hash[:occupation]} around."
# end

# puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe!  Nice to have a Master Plumber around.

## Exercise 2 Double Doubles

# def twice(num)
#   num_str = num.to_s
#   mid_index = (num_str.size - 1) / 2
#   if num_str.size.even?
#     return num if num_str[0..mid_index] == num_str[mid_index + 1..-1]
#   end
#   num * 2
# end

# puts twice(5) # => 10
# puts twice(44) # => 44

## LS Solution 

# def twice(number)
#   string_number = number.to_s
#   center = string_number.size / 2
#   left_side = center.zero? ? '' : string_number[0..center - 1]
#   right_side = string_number[center..-1]

#   return number if left_side == right_side
#   return number * 2
# end

## Exercise 3 Always Return Negative

# def negative(num)
#   return -num if num > 0
#   num
# end

# puts negative(5) # => -5
# puts negative(0) # => 0
# puts negative(-3) # => -3

## LS Solution  ==> This would have been a good place for a ternary operator!

# def negative(number)
#   number > 0 ? -number : number
# end

# ## OR!!

# def negative(number)
#   -number.abs
# end

## Exercise 4 Counting Up

# def sequence(number)
#   if number == 0 
#     number.to_a
#   elsif number > 0
#     1.upto(number).to_a
#   else
#     -1.downto(number).to_a
#   end
# end

# puts sequence(-5) # => [-1, -2, -3, -4, -5]
# puts sequence(5) == [1, 2, 3, 4, 5] # => true

## LS solution 

# def sequence(number)
#   (1..number).to_a
# end

## Exercise 5 Uppercase Check

# def uppercase?(string)
#   string.upcase == string
# end

# puts uppercase?('t') == false  # all true!  
# puts uppercase?('T') == true
# puts uppercase?('Four Score') == false
# puts uppercase?('FOUR SCORE') == true
# puts uppercase?('4SCORE!') == true
# puts uppercase?('') == true   #  interesting... shouldn't this return false?

## Exercise 6 How Long are you?

# def word_lengths(string)
#   string.split.map { |word| "#{word} #{word.size}" }
# end

# puts word_lengths("cow sheep chicken") # => ["cow 3", "sheep 5", "chicken 7"]


## Exercise 7 Name Swapping 

# def swap_name(name)
#   first_name = name.split.first
#   last_name = name.split.last
#   "#{last_name}, #{first_name}"
# end

# puts swap_name('Joe Roberts') == 'Roberts, Joe' # => true


## Exercise 8 Sequence Count 

# def sequence(count, number)
#   result = []
#   return result if count == 0
#   1.upto(count) { |factor| result << factor * number }
#   result
# end

# puts sequence(5, 1)

## Exercise 9 Grade Book

# def compute_grade(score_ary)
#   score_ary.inject(0) { |memo, scr| memo + scr} / score_ary.size
# end

# def get_grade(*score)
#   score_ary = [*score]
#   average = compute_grade(score_ary)
  
#   case average
#   when 90..100 then "A"
#   when 80..89 then  "B"
#   when 70..79 then  "C"
#   when 60..69 then  "D"
#   else                "F"
#   end
# end

# puts get_grade(95, 90, 93) == "A" # => true
# puts get_grade(50, 50, 95) == "D" # => true

## Exercise 10 Grocery List

# def buy_fruit(list)
#   result = []
#   list.each do |sub_array|
#     sub_array[1].times do
#       result << sub_array[0]
#     end
#   end
#   result
# end

# puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

# LS Solution

# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

