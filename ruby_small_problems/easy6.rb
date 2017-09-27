## Exercise 1 Cute angles

# def dms(angle)
#   degs = angle.to_i
#   mins = (angle - angle.to_i) * 60
#   secs = (mins - mins.to_i) * 60
#   %(#{degs}°#{mins.to_i}'#{secs.to_i}")
# end

# puts dms(76.73)

# My solutions works, but I am unable to format it to accept two zeroes along 
# with a single or double quotation mark.  AND my solution rounds incorrectly. 

# The LS solution is much more concise

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round.abs #further exploration
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   degrees = -degrees if degrees_float < 0 # further exploration
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
#   end



## Exercise 2 Delete vowels

# def remove_vowels(array)
#   array.map do |item|
#     item.delete('aeiouAEIOU')
#   end
# end

# puts remove_vowels(%w(green YELLOW black white))

## Exercise 3 Fibonacci Number Location by Length

# def find_fibonacci_index_by_length(digits)
#   fib_array = [1,1,2]
#   loop do
#     fib_num = fib_array[-2] + fib_array[-1]
#     fib_array << fib_num
#     break if fib_num.to_s.size == digits
#   end
#   fib_array.size
# end

# puts find_fibonacci_index_by_length(10000)

## Exercise 4 Reversed Arrays (Part 1)

# def reverse!(list)
#   temp_array = []
#   loop do 
#     temp_array << list.pop
#     break if list.empty?
#   end
#   loop do 
#     list << temp_array.shift
#     break if temp_array.empty?
#   end
#   list
# end

# list = [1, 2, 3]                     
# new_list = reverse!(list)              
# puts list.object_id == new_list.object_id  # => true
# puts new_list == [3, 2, 1]                 # => true
# puts list == [3,2,1]                        # => true

## LS solution

# def reverse!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index] # <== remember this for parallel assignment
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end

## Exercise 5 Reversed Arrays (Part 2)

# def reverse(array)
#   new_list = []
#   array.each do |item|
#     new_list.unshift(item)
#   end
#   new_list
# end

# list = [1, 2, 3]                      
# new_list = reverse(list)              
# puts list.object_id != new_list.object_id  
# puts list == [1, 2, 3]                     
# puts new_list == [3, 2, 1]                 

## Exercise 6 Combining Arrays

# def merge(array1, array2)
#   array2.map do |item|
#     array1 << item if not array1.include?(item)
#   end
#   array1
# end

# puts merge([1, 3, 5], [3, 6, 9]) # => [1,3,5,6,9]

## LS Solution 

# def merge(array_1, array_2)
#   array_1 | array_2
# end

## Exercise 7 Halvsies

# def halvsies(array)
#   array.size.even? ? array2 = array.slice!(array.size/2..-1) : 
#                     array2 = array.slice!((array.size + 1)/2..-1)
#   [array, array2]
# end

# puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# puts halvsies([5]) == [[5], []]
# puts halvsies([]) == [[], []]

## Exercise 8 Find the Duplicate

# def find_dup(array)
#   duplicate = nil
#   non_dup_array = []
#   array.map do |item|
#     if non_dup_array.include?(item)
#       duplicate = item
#     else
#       non_dup_array << item
#     end
#   end
#   duplicate
# end
  
# puts find_dup([1, 5, 3, 1]) == 1 # => true

## LS solution

# def find_dup(array)
#   array.find { |element| array.count(element) == 2 }
# end

## Exercise 9 Does My List Include This?

# def include?(array, item)
#   array.each do |element|
#     return true if element == item
#   end
#   false
# end

## LS solution

# def include?(array, value)
#   !!array.find_index(value)  # the '!!' forces the method to return T/F
# end

## Exercise 10  Right Triangles

# def triangle(n)
#   stars = 1
#   while stars <= n
#     puts ("*" * stars).rjust(n)
#     stars += 1
#   end
# end

# triangle(9)