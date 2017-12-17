def max_by(collection)
  result = []
  collection.each { |value| result << yield(value) }
  
  max_at_index = 0
  max_value = result.first
  
  result.each_with_index do |value, index|
    if value > max_value
      max_at_index = index
      max_value = value
    end
  end
  collection[max_at_index]
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil

#  I did it in two iterations.. LS did it in one.

# def max_by(array)
#   return nil if array.empty?

#   max_element = array.first
#   largest = yield(max_element)

#   array[1..-1].each do |item|
#     yielded_value = yield(item)
#     if largest < yielded_value
#       largest = yielded_value
#       max_element = item
#     end
#   end

#   max_element
# end

