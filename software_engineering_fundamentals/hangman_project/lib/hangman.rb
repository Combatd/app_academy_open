class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"] # class constant
  
  def self.random_word # class method
    DICTIONARY.sample
  end
  
  def initialize # setter for instance variables
    @secret_word = Hangman.random_word # set to random word from DICTIONARY
    @guess_word = @secret_word.split("").map { |char| char = '_'  }
    @attempted_chars = [] # initialize empty array
    @remaining_incorrect_guesses = 5 # set guesses to 5, will be subtracted later
  end

  def guess_word # get instance variable guess_word
    @guess_word
  end

  def attempted_chars # get instance variable attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses # get instance variable remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted? (char) # boolean method checks if char was attempted
    if @attempted_chars.include?(char)
      return true
    end

    false # returns false if not included in @attempted_chars
  end

  def get_matching_indices (char)
    matching_indices = [] # empty array
    Hangman.random_word.each_char.with_index { |ele, i| matching_indices << i if ele == char }
    matching_indices # return the array with all matching indices
  end

  def fill_indices (char, indices_arr)
    indices_arr.each { |idx| @guess_word[idx] = char }
  end

end
