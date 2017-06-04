## Exercise 1 ASCII String Value

# def ascii_value(string)
#   sum = 0
#   string.each_char do |char|
#     sum += char.ord
#   end
#   sum
# end


## Exercise 2 After Midnight (Part 1)

# def time_of_day(minutes)
#   minutes = minutes%1440 # => total number of minutes in a day
#   hours, mins = minutes.divmod(60) # => total number of minutes in an hour
 
#   format('%02d:%02d',hours, mins) # I needed this formatting!
# end
#   # All tests were true!

# TIME = Time.new(2017,2,12,0,0,0)

# def day_and_time(minutes)
#   seconds = minutes * 60
#   time = TIME + seconds
#   time.to_s
#   time.strftime("%A %H:%M")
# end

# puts day_and_time(-1437)

## Exercise 3 After Midnight (Part 2)

# def after_midnight(time)
#   return 0 if time == '00:00' || time == '24:00'
#   (time[0..1].to_i * 60) + time[-2..-1].to_i
# end

# def before_midnight(time)
#   return 0 if time == '00:00' || time == '24:00'
#   minutes = (time[0..1].to_i * 60) + time[-2..-1].to_i
#   minutes = 1440 - minutes
# end

# ## LS solution

# HOURS_PER_DAY = 24       # These constants give meaning to otherwise ambiguous #s
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end
  
## Exercise 4 Letter Swap

# def swap(string)
#   word_array = string.split(' ')
#   word_array.map do |word|
#     initial = word[0]
#     final = word[-1]
#     word[0] = final
#     word[-1] = initial
#   end
#   word_array.join(' ')
# end

# puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# puts swap('Abcde') == 'ebcdA'
# puts swap('a') == 'a'

# Note: LS solution breaks this task up into two methods: one to split and join
# the string and the other to swap characters

## Exercise 5 Clean up the words

# With regular expressions

# def cleanup(string)
#   string.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

# Without regular expressions
# ACCEPTED_CHARS = " abcdefghijklmnopqrstuvwxyz"

# def cleanup(string)
#   new_string = ' '
#   string.each_char do |char|
#     if ACCEPTED_CHARS.include?(char)
#       new_string << char
#     else
#       new_string << ' '
#     end
#   end
#   new_string.squeeze(' ')
# end

# puts cleanup("---what's my +*& line?")

## Exercise 6 Letter Counter (Part 1)

# def word_sizes(text)
#   word_counting_hash = { }
#   text.split(' ').each do |word|
#     if word_counting_hash.has_key?(word.length)
#       word_counting_hash[word.length] += 1
#     else
#       word_counting_hash[word.length] = 1
#     end
#   end
#   word_counting_hash
# end

# puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# puts word_sizes('') == {}

## Exercise 7 Letter Count (Part 2)

# ACCEPTED_CHARS = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     word_size = 0
#     word.each_char do |char|
#       word_size += 1 if ACCEPTED_CHARS.include?(char)
#     end
#     counts[word_size] += 1
#   end
#   counts
# end

# # Using regexp 

# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end

## Exercise 8 -- Alphabetical numbers 

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(array)
#   array.sort_by { |number| NUMBER_WORDS[number] }
# end
    
# puts alphabetic_number_sort((0..19).to_a)

## Exercise 9 -- Daily double

# def crunch(string)
#   string.squeeze
# end

# def crunch(string)
#   index = 0
#   crunch_text = ''
#   while index <=  string.length - 1
#     crunch_text << string[index] unless string[index] == string[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# puts crunch('4444abcabccba') == '4abcabcba'
# puts crunch('ggggggggggggggg') == 'g'
# puts crunch('a') == 'a'
# puts crunch('') == ''


## Exercise 10 Bannerizer

# def print_in_box(text)
#   border = "+-#{'-' * text.length}-+"
#   empty_line = "| #{' ' * text.length} |"
#   message = "| #{text} |"
#   puts border
#   puts empty_line
#   puts message
#   puts empty_line
#   puts border
# end

# print_in_box('Eat my shorts!')

