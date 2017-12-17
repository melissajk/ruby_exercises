my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# you can call a proc with no argument
# Procs have their own class
# you initialize a proc with the 'proc' keyword

Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# You can't call a proc with no argument
# a lambda is a proc
# there is more than one way to initialize a lambda, but it doesn't have a
#   class of its own, so you can't use 'Lambda.new'
# A lambda maybe a proc, but it maintains a seperate identity from a proc.  You
#  can see this when you look at a string representation of the object "lambda"


def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# First example -- The block is passed in, but the argument is not passed to the
#   block, so the output doesn't contain the string 'seal'
# Second example -- Error -- no block
# yield has to have a block passed in, but not necessarily an argument

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# First example - argument passed into the method is passed into the block 
#    (via yield) and then assigned to the block variable 'turtle' before the 
#    value associated with the variable is printed out in the string
# Second example - Only one argument passed into the method, even though the 
#    block will accept two variables.  Only turtle is used for the output, but 
#    there is no error given for the absence of a second block variable. 
# Third example - Error because there is no variable within the block


# Summary
# Procs and lambdas both belong to the Proc class.  They are both initialized with
#  their respective key words, although there is a second way to initialize a lambda.
#  They both seem to be portable blocks that can be contained in variables.  
#  Lambdas require arguments when called, but procs do not.  

# A block is an enclosure that can encompass a method.  It is NOT an object! You can implicitly pass
# this block into the method and call it with the 'yield' keyword.  If the 'yield'
# keyword is inside of a method, you have to pass in a block, or you get a 'jump error'.
# However, you don't have to pass an argument to the block, even if the block takes one.
# Blocks will throw an error if a variable is referenced that doesn't exist within the block's scope.



