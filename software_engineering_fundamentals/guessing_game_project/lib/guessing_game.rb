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
        if num == @secret_num # ends game with correct guess
            @game_over = true # end game with correct answer
            p "you win" # print you win message
        elsif num > @secret_num
            p "too big"
        else 
            p "too small"    
        end
    end

    def ask_user
        p 'enter a number' # prompt
        num = gets.chomp # remove all /n from user input
        guess = num.to_i # convert the string to an integer
        check_num(guess) # call check num with the input as argument
    end
end
