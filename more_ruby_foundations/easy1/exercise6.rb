#any? method
# should take an array as an argument and a block
# return true if the block returns true for any of the element / or false
# block returns true? stop processing!
# [] => false
# do not use any?, all? none? or one? within 

def any?(array)   # this won't work with hashes!
  counter = 0
  while counter < array.size
    return true if yield(array[counter])
    counter += 1
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

# LS Solution

# def any?(collection)
#   collection.each { |item| return true if yield(item) }
#   false
# end

# You CAN exit early from the #each method, and this is the best method to use
# because it will work with arrays, hashes and sets 

