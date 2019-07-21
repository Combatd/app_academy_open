require_relative "room"

class Hotel
    
  def initialize (name, rooms)
    @name = name
    @rooms = Hash.new{ |room_name, room_cap| } # set rooms to new hash
  end

end
