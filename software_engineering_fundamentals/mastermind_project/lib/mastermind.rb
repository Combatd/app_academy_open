require_relative "code"

class Mastermind
 
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(code_instance)
    p code_instance.num_exact_matches(code_instance)
    p code_instance.num_near_matches(code_instance)
  end

  def ask_user_for_guess
    equal_check = Code.==
    p 'Enter a code'
    guessStr = gets.chomp
    Code.from_string(gets.chomp)
    p self.print_matches(guessStr)
    equal_check(guessStr)
  end

end
