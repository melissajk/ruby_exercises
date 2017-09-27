class Person
  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end
  
  def first_name=(value)
    @first_name = value.capitalize
  end
  
  def last_name=(value)
    @last_name = value.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

person = Person.new('john', 'doe')
puts person  # John Doe

person.first_name = 'jane'
person.last_name = 'smith'
puts person  # Jane Smith

# To correct the mistake in the code, we have to add writer methods, but the
# writer methods need to contain the #capitalize method, so we need to use the 
# long-hand form and add the #capitalize method.

