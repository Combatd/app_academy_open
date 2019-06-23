# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0 # initialize count with 0
    # downcase for ease of comparisons
    word = string.downcase
    letter = char.downcase
    word.each_char do |c| 
        if c == letter # two equal signs for comparisons
            count += 1 
        end
    end
    count
end