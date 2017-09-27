class Person
  attr_writer :secret
  
  def share_secret
    puts secret
  end

  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret

# private methods can't be invoked from outside of the class, but they can be
# invoked from inside of the class (as long as they don't use 'self')
