
## Exercise 1

# def rotate_array(array)
#   result = []
#   array.each do |element|
#     result << element
#   end
#   result << result.shift
# end

# x = [1, 2, 3, 4]
# puts rotate_array(x) == [2, 3, 4, 1]   # => true
# puts x == [1, 2, 3, 4]                 # => true

## LS Solution 

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_string(string)
#   rotate_array(string.chars).join
# end

# puts rotate_string("Eat my shorts") # => at my shortsE

# def rotate_integer(integer)
#   rotate_string(integer.to_s).to_i
# end

# puts rotate_integer(12345) # => 23451

## Exercise 2 Rotation (Part 2)

# def rotate_rightmost_digits(number, digits)
#   rotating_digits = number.to_s.slice(-digits..-1)
#   other_digits = number.to_s.slice(0...-digits)
#   (other_digits + rotate_string(rotating_digits)).to_i
# end

# puts rotate_rightmost_digits(735291, 1) == 735291 # => all true
# puts rotate_rightmost_digits(735291, 2) == 735219
# puts rotate_rightmost_digits(735291, 3) == 735912
# puts rotate_rightmost_digits(735291, 4) == 732915
# puts rotate_rightmost_digits(735291, 5) == 752913
# puts rotate_rightmost_digits(735291, 6) == 352917

## LS solution 

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

## Exercise 3 Rotation (Part 3)

# def max_rotation(number)
#   rotations = number.to_s.size
#   rotations.downto(2) { |num| number = rotate_rightmost_digits(number, num)}
#   number
# end

# puts max_rotation(735291) == 321579 # => true

## Exercise 4 -- 1000 Lights

# def create_lights(number)
#   light_board = Hash.new
#   1.upto(number) do |num|
#     light_board[num] = 'on'
#   end
#   light_board
# end

# def count_lights(light_board)
#   lights_are_on = []
#   light_board.each do |key, value|
#     if value == 'off'
#       lights_are_on << key
#     end
#   end
#   lights_are_on
# end


# def light_switch(lights)
#   light_board = create_lights(lights)
  
#   1.upto(lights) do |number|
#     light_board.keys.each do |key|
#       if key%number == 0
#         if light_board[key] == "on"
#           light_board[key] = "off"
#         else
#           light_board[key] = 'on'
#         end
#       end
#     end
#   end
#   count_lights(light_board)
# end

# puts light_switch(1000)

## Exercise 5 Diamonds!

def diamond(n)
  star = '*'
  diamond_vault = []
  loop do
    puts star.center(n)
    break if star.size == n
    diamond_vault << star
    star += "**"
  end
  loop do
    puts diamond_vault.pop.center(n)
    break if diamond_vault.empty?
  end
end

puts diamond(5)

## LS Solution -- a bit tidier 

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - (2 * distance_from_center)
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

## Extension - make an outline of a diamond

# def print_row(grid_size, distance_from_center)
#   number_of_spaces = (grid_size - (2 * distance_from_center)) - 2
#   star = '*'
#   spaces = ' ' * number_of_spaces
#   puts (star + spaces + star).center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   point = '*'.center(grid_size)
#   puts point
#   (max_distance - 1).downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance - 1)   { |distance| print_row(grid_size, distance) }
#   puts point
# end

# diamond(9)

## Exercise 6 Stack Machine Interpretation

# def minilang(command)
#   stack = []
#   register = 0
#   command_array = command.split
#   command_array.each do |item|
#     case item
#     when 'ADD'
#       register += stack.pop
#     when 'SUB'
#       register -= stack.pop
#     when 'MULT'
#       register *= stack.pop
#     when 'DIV'
#       register /= stack.pop
#     when 'MOD'
#       register %= stack.pop
#     when 'PUSH'
#       stack.push(register)
#     when 'POP'
#       register = stack.pop
#     when 'PRINT'
#       puts register
#     else 
#       register = item.to_i
#     end
#   end
# end
  
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # => 5, 10, 4, 7

## Exercise 7 Word to Digit

# NUMBERS = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,  
#             'five' => 5,'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9
# }

# def word_to_digit(string)  ## this is incorrect because 'four.' is not counted 
#   result = []             ## as one of the options for numbers AND I don't know enough
#   string.split.each do |word|    ## regex to separate the 'four' from the '.'
#     if NUMBERS.keys.include?(word)
#       result << NUMBERS[word]
#     else
#       result << word
#     end
#   end
#   result.join(' ')
# end

# puts word_to_digit('Please call me at five five five one two three four. Thanks.')
# # => Please call me at 5 5 5 1 2 3 four. Thanks.  ***WRONG!***

## LS Solution (DIGIT_HASH is the same as NUMBERS)

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

## Exercise 8 Fibonacci Numbers (Recursion)

# def fibonacci(n)
#   n == 0 || n == 1 ? n : fibonacci(n-2) + fibonacci(n-1)
# end

# puts fibonacci(1) == 1 # => all true
# puts fibonacci(2) == 1 
# puts fibonacci(3) == 2 
# puts fibonacci(4) == 3 
# puts fibonacci(5) == 5
# puts fibonacci(12) == 144
# puts fibonacci(20) == 6765

## Exercise 9 Fibonacci Numbers (Procedural)

# def fibonacci(n)
#   array = [0,1]
#   2.upto(n) do
#     array[2] = array[0] + array[1]
#     array.shift
#   end
#   array.last
# end

# puts fibonacci(20) == 6765
# puts fibonacci(100) == 354224848179261915075
# puts fibonacci(100_001) # => 4202692702.....8285979669707537501

## Exercise 10 Fibonacci Numbers (Last Digit)

# def fibonacci_last(n)
#   result = fibonacci(n).to_s
#   result[-1].to_i
# end

# puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4

## To compute the really big #'s LS uses this method

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# puts fibonacci_last(123456789) # -> 4

