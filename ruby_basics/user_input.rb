## Exercise 1 -- Repeat after me ##

# def ruby_repeater
#   puts ">> Type anything you want:"
#   answer = gets
#   puts answer
# end

# ruby_repeater

## Exercise 2 -- Your age in months ##

# def ruby_age
#   puts ">> What is your age in years?"
#   answer = gets.to_i
#   puts "You are #{answer*12} months old."
# end

# ruby_age
## If you enter a non-numerical age you get a response of 'you are 0 months old'

## Exercise 3 -- Print Something (Part 1) ##

# def ruby_something
#   puts ">> Do you want me to print something? (y/n)"
#   answer = gets.chomp.downcase
#   puts 'something' if answer == 'y'
# end

# ruby_something

## Exercise 4 -- Print Something (Part 2) ##

# def ruby_something
#   loop do
#     puts ">> Do you want me to print something? (y/n)"
#     answer = gets.chomp
#     if answer.downcase == 'y'
#       puts 'something'
#       break
#     elsif answer.downcase == 'n'
#       break
#     else 
#     puts ">> Invalid input! Please enter y or n"
#     end
#   end
# end

# ruby_something

## Launch school's solution:
# choice = nil
# loop do
#   puts '>> Do you want me to print something? (y/n)'
#   choice = gets.chomp.downcase
#   break if %w(y n).include?(choice)   # ????
#   puts '>> Invalid input! Please enter y or n'
# end
# puts 'something' if choice == 'y'

## Exercise 5 -- Launch School Printer (Part 1) ##

# def ruby_lsprint
#   loop do 
#     puts ">> How many output lines do you want? Enter a number >= 3:"
#     answer = gets.chomp.to_i
#     if answer >= 3
#       answer.times {puts "Launch School is the best!"}
#       break
#     else
#       puts "That's not enough lines."
#     end
#   end
# end

# ruby_lsprint

## Exercise 6 -- Passwords ##

# PASSWORD = 'Green'

# def ruby_password
#   loop do
#     puts ">> Please enter your password:"
#     attempt = gets.chomp
#     if attempt != PASSWORD
#       puts "Invalid password!"
#     else
#       puts "Welcome!"
#       break
#     end
#   end
# end

# ruby_password

## Exercise 7 -- User Name and Password ##

# ruby login.rb
# USERNAME = 'Tyler'
# PASSWORD = 'Green'

# loop do
#   puts '>> Please enter your User Name:'
#   user_name_try = gets.chomp
  
#   puts '>> Please enter your password:'
#   password_try = gets.chomp
  
#   break if password_try == PASSWORD && user_name_try == USERNAME
#   puts '>> Authorization Failed!'
# end

# puts 'Welcome!'

## Exercise 8 -- Dividing Numbers ##

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# # ruby division.rb

# numerator = nil
# loop do
#   puts '>> Please enter the numerator:'
#   numerator = gets.chomp
#   break if valid_number?(numerator)
#   puts 'Invalid input. Only integers are allowed'
# end

# denominator = nil
# loop do
#   puts 'Please enter the denominator:'
#   denominator = gets.chomp
  
#   if denominator == '0' 
#     puts '>> Invalid input. A denominator of 0 is not allowed.'
#   else
#     break if valid_number?(denominator)
#     puts 'Invalid input. Only integers are allowed'
#   end
# end

# answer = numerator.to_i / denominator.to_i
# puts ">> #{numerator} / #{denominator} is #{answer}"

# Exercise 9 -- Launch School Printer (Part 2)

# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
#   number_of_lines = gets.chomp
#   if number_of_lines.downcase == 'q'
#     break
#   elsif number_of_lines.to_i < 3
#     puts ">> That's not enough lines."
#   else
#     number_of_lines = number_of_lines.to_i
#     while number_of_lines > 0
#       puts 'Launch School is the best!'
#       number_of_lines -= 1
#     end
#   end
# end

## Exercise 10 -- Opposites Attract ##

# ruby opposites.rb

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# loop do

# result = nil
# integer1 = nil
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     integer1 = gets.chomp
#     break if valid_number?(integer1)
#     puts ">> Invalid input. Only non-zero integers are allowed"
#   end

# integer2 = nil
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     integer2 = gets.chomp
#     break if valid_number?(integer2)
#     puts ">> Invalid input. Only non-zero integers are allowed"
#   end
  
  
#   if integer1.to_i * integer2.to_i < 0
#     result = integer1.to_i + integer2.to_i
#     puts "#{integer1} + #{integer2} = #{result}"
#     break
#   else
#     puts ">> Sorry. One integer must be positive, one must be negative."
#     puts ">> Please start over."
#   end
# end
 
   
    
  



  
  
  