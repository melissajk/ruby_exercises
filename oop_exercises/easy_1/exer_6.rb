class Flight
  #attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end


#  How can this class be fixed to be resistant to problems in the future?
#  Do away with the attr_accessor for @database_handle.  We are providing easy access
#  to the @database_handle instance variable. By making @database_handle easy, 
#  someone may use it in real code, and future modifications to the class may
#  break that code.  

