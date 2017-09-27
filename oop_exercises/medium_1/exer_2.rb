class FixedArray
  def initialize(size)
    @fixed_array = Array.new(size)  # collaborates with the Array class
  end
  
  def to_a
    @fixed_array
  end
  
  def to_s
    "#{@fixed_array}"
  end
  
  def within_range?(index)
   return false if @fixed_array.fetch(index, index) == index
   return true
  end
  
  def []=(index, item)
    if within_range?(index)
      @fixed_array[index] = item
    else
      @fixed_array.fetch(index)
    end
  end
  
  def [](index)
    @fixed_array.fetch(index)
  end
end


fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

# this code should output true 15 times
# all tests = true

# LS Solution

class FixedArray
  def initialize(max_size)
    @array = Array.new(max_size)
  end

  def [](index)
    @array.fetch(index)
  end

  def []=(index, value)
    @array.fetch(index)  # if there is an exception, it will not continue to 
    @array[index] = value  # the next line
  end

  def to_a
    @array.clone
  end

  def to_s
    to_a.to_s
  end
end