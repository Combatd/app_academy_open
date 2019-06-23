# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence string as an arg. 
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ")

    new_words = []
    words.each_with_index do |word, i|
        if num_vowels(word) >= 2
            new_words << word
        end
         
    end
    
    return new_words.join(" ")
    
end

def num_vowels(word)
    count = 0
    word.each_char do |char|
        # check both lowercase and uppercase vowels
        if "aeiou".include?(char) || "AEIOU".include?(char)
            count += 1 
        end    
    end
    count
end