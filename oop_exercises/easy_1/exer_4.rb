class Book
  attr_accessor :title, :author
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)  # The author of "Snow Crash" is Neil Stephenson.
puts %(book = #{book}.)                                   # book = "Snow Crash", by Neil Stephenson.


# I fixed the code by adding attr_accessor methods for title and author

# Would it be better to create and initialize at the same time like in the 
# previous exercise?  What potential problems, if any, are introduced by 
# separating the steps?

# I think that separating the steps will allow for a bit more flexibility, for example, 
# if you don't have all of the available information.  Then you can just enter it
# at a later time.  But if all information is present, it's probably better for the 
# initialization process to demand it all up front. 


