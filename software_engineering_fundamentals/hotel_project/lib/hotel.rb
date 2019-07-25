require_relative "room"

class Hotel
  
  def initialize (name, cap_hash)
    @name = name
    @rooms = {} # initialize empty hash
    cap_hash.each do |room_name, room_cap|
      @rooms[room_name] = Room.new(room_cap)
    end

  end

  def name
    capName = @name
    capName.split(' ').each { |string| string.capitalize! }.join(' ')
  end

  def rooms
    @rooms
  end

  def room_exists? (room)
    @rooms.has_key?(room) # hash check
  end

  def check_in (person, room_name)
    if self.room_exists?(room_name)
      if @rooms[room_name].add_occupant(person)
        puts "check in successful"  
      else # if room is full
        puts "sorry, room is full"
      end # nested conditional
    else
      puts "sorry, room does not exist"   
    end
  
  end

  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0 } # check if room in hash has available space
  end

  def list_rooms
    @rooms.each do |room_name, val|
      puts "#{room_name} : #{val.available_space}"
    end
  end

end
