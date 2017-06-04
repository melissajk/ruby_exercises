## Exercise 1 -- How Old is Teddy? ##

# age = Random.new
# age = rand(20..200)
# puts "Teddy is #{age} years old!"

## Exercise 2 -- How Big is the Room? ##

# puts "Enter the length of the room in meters:"
# length = gets.to_i
# puts "Enter the width of the room in meters:"
# width = gets.to_i
# area = length * width
# area_sq_ft = (area * 10.7639).round(2)
# puts "The area of the room is #{area} square meters (#{area_sq_ft} square feet)."

## Exercise 3 -- Tip Calculator ##

# puts "What is the bill?"
# bill_amt = gets.to_i
# puts "What is the tip percentage?"
# tip_percent = gets.to_i

# tip = (bill_amt * (tip_percent / 100.0)).round(2)
# total = (bill_amt + tip).round(2)
# puts "The tip is $#{tip}"
# puts "The bill is $#{total}"

## Exercise 4 -- When Will I Retire? ##

# puts "What is your age?"
# curr_age = gets.to_i
# puts "At what age would you like to retire?"
# retire_age = gets.to_i

# years_of_work = retire_age - curr_age
# retire_year = 2017 + years_of_work

# puts "It's 2017. You will retire in #{retire_year}."
# puts "You have only #{years_of_work} years of work to go!"

## Exercise 5 -- Greeting a User ##

# puts "What is your name?"
# name = gets.chomp
# if name.include?("!")
#   puts "HELLO #{name.upcase.delete("!")}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

## Exercise 6 -- Odd Numbers ##

# (0..99).each do |number|
#   puts number if number.odd?
# end


## Exercise 7 -- Even Numbers ##

# (1..99).each do |number|
#   puts number if number.even?
# end

## Exercise 8 -- Sum or Product of Consecutive Integers ##

# puts ">> Please enter an integer greater than 0:"
# int = gets.to_i
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp
# if choice == 's'
#   total_s = (1..int).inject {|memo,num| memo + num}
#   puts "The sum of the integers between 1 and #{int} is #{total_s}."
# else
#   total_p = (1..int).inject {|memo,num| memo * num}
#   puts "the product of the integers between 1 and #{int} is #{total_p}."
# end

## Exercise 9 -- String Assignment ##

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# This code prints out 'BOB' two times because name and save_name are variable for 
# the same string, so when 'name.upcase!' changes the string, save_name reflects that
# change. 

## Exercise 10 -- Mutation ##

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2

# I thought that a change to array1 would not change array2, but I was wrong. 
# Several names were upcased in array2.

