# create a banner class - implementation details should be left private

# class Banner
#   def initialize(message)
#     @message = message
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#     "+-#{'-' * @message.size}-+"
#   end

#   def empty_line
#     "| #{' ' * @message.size} |"
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# banner = Banner.new('')
# puts banner
# # +--+
# |  |
# |  |
# |  |
# +--+

# Further Exploration

# when you call new you are allowed to specify the width of the banner and the
# message will be centered (provide a default)
# decide how to handle widths that are too wide or too narrow. 

# if width < message.size --> default
# if width > 100 --> default

class Banner
  def initialize(message, width=message.size)
    @message = message
    set_banner_width(width)
  end
  
  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private
  attr_accessor :banner_width
  
  def set_banner_width(width)
    self.banner_width = if width < @message.size || width > 85
                          @message.size
                        else
                          width
                        end
  end

  def horizontal_rule
    "+-#{'-' * banner_width}-+"
  end

  def empty_line
    "| #{' ' * banner_width} |"
  end

  def message_line
    "| #{@message.center(banner_width)} |"
  end
end

banner = Banner.new("Frankly, my dear, I don't give a damn.", 60)
puts banner
