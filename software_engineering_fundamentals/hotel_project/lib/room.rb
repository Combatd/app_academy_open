class Room

 def initialize (capacity) # set instance variables
    @capacity = capacity
    @occupants = [] # empty array
 end

 # get methods for instance variables
 def capacity 
    @capacity
 end

 def occupants
    @occupants
 end

 def full?
    @occupants.length === @capacity # return true when capacity met
 end

 def available_space
    @capacity - @occupants.length # returns the available space left
 end

 def add_occupant (name) # string name is arg
    if self.full? 
        return false
    else        
        @occupants << name # shovel name into array
        return true
    end
 end

end
