# Group 1
def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# Nothing is output by the #check_return_with_proc method
# return in proc call returns from entire method

# Group 2
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
end

check_return_with_proc_2(my_proc)

# Error message ==> unexpected return
# if proc initialized outside of the method and passed in as an 
# argument -- return jumps to where the proc was defined and you cannot return
# from the top level of the program


# Group 3
def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda

# if we return from within a lambda and that lamba is defined within a method, 
# then program execution jumps to where the lambda was defined.  It picks up after
# the lambda.call line

my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda(my_lambda)

# if we return from within a lambda and that lamba is defined outsdide a method, 
# then program execution jumps to where the lambda was defined.  It picks up after
# the lambda.call line  (same as above)

def block_method_3
  yield
end

block_method_3 { return }

# Like the proc this method receives an 'unexpected return' error -- you are 
# trying to return from some code that isn't in a method


# The block and the proc -- if they are created outside of the method and passed
# in as an argument - you receive an error.  However if the proc is created inside
# of a method, then the return will immediate exit the method.  
# If you return from a lambda (outside or inside the block), the program execution
# will proceed to the next line after the #call method for the lambda.