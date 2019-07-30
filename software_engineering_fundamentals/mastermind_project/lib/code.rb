class Code
  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs # get methods

  def self.valid_pegs?(chars_array) # class method
    chars_array.each do |char|
      return false if !POSSIBLE_PEGS.has_key?(char.upcase)
    end
    true
  end

  def initialize(chars_array)
    if Code.valid_pegs?(chars_array)
      @pegs = chars_array.map(&:upcase) # return new array from chars_array
      # each peg should be uppercase
    else
      raise 'the array should only contain pegs R,G,B, and Y'
    end
  end

  def self.random(length)
    random_pegs  = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    new_pegs = pegs.split('')
    Code.new(new_pegs) # new array instance with pegs
  end

  def [](index) # syntactic sugar
    @pegs[index]
  end

  def length # returns length of pegs instance variable
    @pegs.length
  end

end
