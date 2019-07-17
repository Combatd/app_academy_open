class GuessingGame
    def initialize (min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0 # counter for amount of guesses
        @game_over = false # false until the correct answer is given by user
    end

    def num_attempts
        @num_attempts # num attempts getter
    end

    def game_over?
        @game_over # gets game over status
    end

    def check_num (num)
        @num_attempts += 1 # increments each time user inputs a number
        @game_over = true if num == @secret_num # ends game with correct guess
    end

end
