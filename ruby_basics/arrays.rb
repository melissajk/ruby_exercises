## Exercise 1 -- New Pet ##

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]

# puts "I have a pet #{my_pet}!"

## Exercise 2 -- More Than One ##

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets[2,3]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

## Exericse 3 -- Free the Lizard ##

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]

# my_pets.delete("lizard")

# puts "I have a pet #{my_pets[0]}!"

## Exercise 4 -- One Isn't Enough ##

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop

# my_pets << pets[1]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

## Exercise 5 -- What Color Are You? ##

# colors = ['red', 'yellow', 'purple', 'green']

# colors.each do |color|
#   puts "I'm the color #{color}"
# end

## Exercise 6 -- Doubled ##

# numbers = [1, 2, 3, 4, 5]

# doubled_numbers = numbers.map { |num| num * 2 }

# p doubled_numbers

## Exercise 7 -- Divisible by Three ##

# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = numbers.select { |num| num%3 == 0 }

# p divisible_by_three

## Exercise 8 -- Favorite Number (Part 1) ##

# ['Dave', 7, 'Miranda', 3, 'Jason', 11]

# ['Dave', 7]
# ['Miranda', 3]
# ['Jason', 11]

# [['Dave', 7], ['Miranda', 3], ['Jason' 11]]

## Exercise 9 -- Favorite Number (Part 2) ##

# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# flat_favorites = favorites.flatten

# p flat_favorites

## Exercise 10 -- Are We The Same? ##

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# puts array1 == array2



