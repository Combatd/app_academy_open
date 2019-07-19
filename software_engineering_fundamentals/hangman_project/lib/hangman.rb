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

end
