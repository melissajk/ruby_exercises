## Exercise 1 -- Create a String ##

# mtString = ' '

# **note: You can also use mtString = String.new

## Exercise 2 -- Quote Confusion ##

# puts "It's now 12 o'clock."

# **note: You can also use %Q(It's now 12 o'clock.) for a double-quoted string.
#         %q(for a single-quoted string)

## Exercise 3 -- Ignoring case ##

# name = 'Roger'

# puts name.casecmp('RoGeR') == 0
# puts name.casecmp('DAVE') == 0

## Exercise 4 -- Dynamic String ##

# name = 'Elizabeth'

# puts "Hello, #{name}!"
 
# **note: One of the advantages of using double quotes is that you can invoke
#         a variable or a method from within a string. 

## Exericise 5 -- Combining Names ## 

# first_name = 'John'
# last_name = 'Doe'

# full_name = first_name + ' ' + last_name

# puts full_name

# full_name = "#{first_name} #{last_name}"

# puts full_name

## Exercise 6 -- Tricky Formatting ##

# state = 'tExAs'

# state.capitalize!

# puts state

## Exericse 7 -- Goodbye, not Hello ##

# greeting = 'Hello!'
# greeting.gsub!('Hello!','Goodbye!')

# puts greeting 

## Exercise 8 -- Print the Alphabet ##

# alphabet = 'abcdefghijklmnopqrstuvwxyz'

# puts alphabet.split(//)

## Exericise 9 -- Pluralize ##

# words = 'car human elephant airplane'

# words.split(' ').each do |word|
#   puts word + 's'
# end

## Exercise 10 -- Are You There? ##

# colors = 'blue pink yellow orange'

# puts colors.include?('yellow')
# puts colors.include?('purple')
















