class Machine

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end
  
  def switch_state  # Further Exploration
    switch
  end
  
  private
  
  attr_writer :switch
  
  def switch # Further Exploration
    @switch
  end

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

machine = Machine.new

p machine.start # => :on
p machine.stop # => :off
p machine.switch_state # => :off


