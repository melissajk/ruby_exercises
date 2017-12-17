# def compute
#   if block_given?
#     yield
#   else
#     "Does not compute."
#   end
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

## Further Exploration ##

def compute(num)
  return 'Does not compute.' unless block_given?
  yield(num)
end

p compute(8) { |num| num + num }
p compute(10)
p compute(6) { |num| num**2 }

