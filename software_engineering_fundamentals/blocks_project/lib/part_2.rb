def all_words_capitalized? (word_arr)
    return true if word_arr.all? { |word| word == word.capitalize }
    false
end