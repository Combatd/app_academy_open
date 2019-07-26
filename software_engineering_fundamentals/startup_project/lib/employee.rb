class Employee
    attr_reader :name, :title # getter method
    
  def initialize (name, title)
    # set instance variables
    @name = name
    @title = title
    # hidden encapuslated data
    @earnings = 0 # accumulator
  end

  def pay (amount)
    @earnings += amount # increase earnings by the amount
  end

end
