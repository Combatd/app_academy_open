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

  def try_guess (char)
     # matching indexes will pass into fill_indices
    matchingIdx = get_matching_indices(char)
    if matchingIdx.length == 0
      @remaining_incorrect_guesses -= 1 # wrong guess
    end
    fill_indices(char, matchingIdx)
    
    if already_attempted?(char)
      puts "that has already been attempted"
      return false # indicates guess was previously attempted
    else
      @attempted_chars << char
      return true # indicates guess was NOT previously attempted
    end  
  end

  def ask_user_for_guess
    puts 'Enter a char:'
    char = gets.chomp # input number without newline
    try_guess(char) # passes input into try_guess and returns values
  end

  def win?
    if @guess_word.join('') == @secret_word # @guess_word needs to be a string
      puts 'WIN'
      return true
    end
    false
  end

  def lose? # boolean method
    if @remaining_incorrect_guesses < 1
      puts 'LOSE'
      return true
    end
    false
  end

  def game_over? # boolean method
   if win? || lose?
    puts @secret_word
    return true
   end
   false
  end

end
