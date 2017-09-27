class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)  # You have to remove the 'self' from this method 
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# private methods can not be called with an explicit receiver, even when the
# receiver is 'self' 