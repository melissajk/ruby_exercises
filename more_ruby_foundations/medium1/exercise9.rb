# create an enumerator that can iterate over an infinite list of factorials
# Factorials --> 0!, 1!, 2!, 3!, 4!...
# 1, 1, 2, 6, 24, 120
# External enumerator ==> print out first 7 factorials 
#  RESET
# Internal enumerator ==> print out the same seven factorials
# 
# You'll only need 3 enumerator methods to complete the exercise
# Enumerator::new
# Enumerator --> Enumberable module
# 

factorial = Enumerator.new do |y|
  counter = 0
  total = 1
  loop do
    y << total
    counter += 1
    total *= counter
  end
end

7.times { puts factorial.next }

factorial.rewind

factorial.each_with_index do |num, index|
  puts num
  break if index == 6
end
  