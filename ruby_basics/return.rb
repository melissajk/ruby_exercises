## Exercise 1  -- Breakfast, Lunch or Dinner (part 1) ##

# def meal
#   return 'Breakfast'
# end

# puts meal

# This method returns 'Breakfast'.  Every method returns the evaluated result
# of the last line that is executed. The only way to ensure a specific return 
# value is to use the command 'return'

## Exercise 2 -- Breakfast, Lunch or Dinner (part 2) ##

# def meal
#   'Evening'
# end

# puts meal

#  This method will return 'Evening', but it won't print it to the screen until
#  you call it with the command 'puts'

## Exercise 3 -- Breakfast, Lunch or Dinner (part 3) ##

# def meal
#   return 'Breakfast'
#   'Dinner'
# end

# puts meal

# This method will print 'Breakfast' because the 'return' command calls for an 
# immediate exit from the method. 

## Exercise 4 -- Breakfast, Lunch or Dinner (part 4) ##

# def meal
#   puts 'Dinner'
#   return 'Breakfast'
# end

# puts meal

# This method prints 'Dinner' and then 'Breakfast'.  One is printed within the 
# method and the other (Breakfast) is the return value called outside of the 
# method with 'puts'.

## Exercise 5 -- Breakfast, Lunch or Dinner (part 5) ##

# def meal
#   'Dinner'
#   puts 'Dinner'
# end

# p meal

# This method prints 'Dinner' and 'nil' 

## Exercise 6 -- Breakfast, Lunch or Dinner (part 6) ##

# def meal
#   return 'Breakfast'
#   'Dinner'
#   puts 'Dinner'
# end

# puts meal

#  This method will print 'Breakfast' because the return command also exits the 
#  method...the two lines below will be ignored. 

## Exercise 7 -- Counting Sheep (Part 1) ##

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
# end

# puts count_sheep

# I thought that this method would return nothing, but it actually returns the
# enumerator from 0 up to 5.  It counts from 0 to four and then returns the 
# number in the method. 

## Exercise 8 -- Counting Sheep (Part 2) ##

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
#   10
# end

# puts count_sheep

#  This method will count from 0 to 4 (like the last one did) and then return
#  the number 10...which is the last line of the method. 

## Exercise 9 -- Counting Sheep (part 3) ##

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#     if sheep >= 2
#       return
#     end
#   end
# end

# p count_sheep

#  This method return 0,1,2, and nil because it exits the loop after it reaches
#  2 and the p command shows the returned 'nil'. 

## Exercise 10 -- Tricky Number ##

# def tricky_number
#   if true
#     number = 1
#   else
#     2
#   end
# end

# puts tricky_number

# This method prints 1 because the if/else statement will evaluate to 'T', so
# just the first line will be looked at.  The variable 'number' is superfluous; 
# when called, it just shows the number attached to it '1'....This was tricky!

