def missing(array)
  result = []
  array[0].upto(array[-1]) do |num|
    result << num unless array.include?(num)
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []


