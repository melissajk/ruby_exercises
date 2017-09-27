# raise an exception if the stack is empty OR
# if an unexpected item is present in the string
# If you have one of the above exceptions, stop processing
# - when I evaluate the string, can I use the 'No method error' produced by a 
#   number to rescue the item?
require 'set'

class MinilangRuntimeError < RuntimeError; end

class EmptyStackError < MinilangRuntimeError; end
class BadTokenError < MinilangRuntimeError; end

class Minilang
  ACTIONS = Set.new %w(ADD SUB MULT DIV PUSH POP PRINT MOD)
  
  def initialize(program)
    @program = program
    @register = 0
    @stack = []
  end
  
  def eval
    @program.split.each { |token| eval_token(token) }
  rescue MinilangRuntimeError => error
    puts error.message
  end
  
  def eval_token(token)
    if ACTIONS.include?(token)
      send(token.downcase)
    elsif token =~ /\A[-+]?\d+\z/
      @register = token.to_i
    else
      raise BadTokenError, "Invalid token: #{token}"
    end
  end
  
  def pop
    raise EmptyStackError, "Empty stack!" if @stack.empty?
    @register = @stack.pop
  end
  
  def add
    @register += pop
  end
  
  def push
    @stack << @register
  end
  
  def print
    puts @register
  end
  
  def mod 
    @register %= pop
  end
  
  def mult
    @register *= pop
  end
  
  def div
    @register /= pop
  end
  
  def sub
    @register -= pop
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval

CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
minilang.eval(degrees_c: 100)
# 212
minilang.eval(degrees_c: 0)
# 32
minilang.eval(degrees_c: -40)
# -40

FAHRENHEIT_TO_CENTIGRADE = "9 PUSH 32 PUSH %<degrees_f>d SUB DIV PUSH 5 MULT PRINT"

minilang1 = Minilang.new(FAHRENHEIT_TO_CENTIGRADE)
minilang1.eval(degrees_f: 212)
#100
minilang1.eval(degrees_f: 32)
#0
minilang.eval(degrees_c: -40)
# -40

MPH_TO_KPH = "3 PUSH 5 PUSH %<miles_hr>d MULT DIV PRINT"

minilang2 = Minilang.new(MPH_TO_KPH)
minilang2.eval(miles_hr: 80)
minilang2.eval(miles_hr: 10)


RECTANGLE_AREA = "%<length>d PUSH %<width>d MULT PRINT"

minilang3 = Minilang.new(RECTANGLE_AREA)
minilang3.eval(length: 5, width: 3)
#15
minilang3.eval(length: 10, width: 7)
#70
