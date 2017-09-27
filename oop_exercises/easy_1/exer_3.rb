## Fix the Program - Books (Part 1)

class Book
  attr_reader :author, :title
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.) # The author of "Snow Crash" is Neil Stephenson.
puts %(book = #{book}.)                                  # book = "Snow Crash", by Neil Stephenson.



## Further Exploration
# attr_reader - This allows the ivars to be retrieved without calling the variable directly(getter method)
# attr_writer - This sets up a method so that the variable can be rewritten
# attr_accessor - This method performs both of the above activities.

# We used attr_reader for this because reassigning the variable is not important (at this phase) and
# if we used attr_accessor, that would allow someone to reassign the variable from outside of the class.
# Using the long-hand form would provide the same effect, but it may be useful if
# we need to format the information before printing it to the screen. 



