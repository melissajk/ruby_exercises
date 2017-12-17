def zip(array1, array2)
  result = []
  array1.each_with_index do |num, index|
    result << [num, array2[index]]
  end
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]