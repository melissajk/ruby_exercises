## Exercise 2 - Seeing Stars 

# eight-pointed star in a n x n grid 
# n >= 7 and is an odd integer
# middle line will be n stars and the lines above and below n - 4 stars
# distance from middle line = spaces between stars

# def print_row(grid_size, distance_from_center)
#   star = '*'
#   spaces = ' ' * (distance_from_center - 1)
#   puts (star + spaces + star + spaces + star).center(grid_size)
# end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2
#   (max_distance).downto(1) { |distance| print_row(grid_size, distance) }
#   puts '*' * grid_size
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

# star(9)

## Exercise 3 -- Transpose 3x3

# matrix = 3 nested arrays of three elements
# transpose the matrix so that the three rows become three columns
# do not mutate the original matrix - create a new one


def copy_matrix(matrix)
  result = []
  matrix.each do |sub_array|
    new_sub_array = []
    sub_array.each do |element|
      new_sub_array << element
    end
    result << new_sub_array
  end
  result
end

def transpose(matrix)
  result = copy_matrix(matrix)
  counter = 0
  loop do
    (counter..2).each do |num|
      result[counter][num], result[num][counter] = result[num][counter], result[counter][num]
    end
    counter += 1
    break if counter >=2
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

