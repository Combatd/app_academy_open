require_relative "code"

class Mastermind
 
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(code_instance)
    p @secret_code.num_exact_matches(code_instance)
    p @secret_code.num_near_matches(code_instance)
  end

  def ask_user_for_guess
    p 'Enter a code'
    guessStr = Code.from_string(gets.chomp)
    p self.print_matches(guessStr)
    @secret_code == guessStr
  end

end
