class Person

  def initialize(name)
    @name = name
  end
  
  def name
    safe_name = ''
    safe_name << @name
    safe_name
  end
    
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name


# LS Solution: #clone provides a not-mutable copy of the value of @name

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name.clone
#   end
# end

