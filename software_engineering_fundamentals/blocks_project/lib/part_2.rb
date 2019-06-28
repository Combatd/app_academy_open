def all_words_capitalized? (word_arr)
    return true if word_arr.all? { |word| word == word.capitalize }
    false
end
# not solved yet
def no_valid_url? (url_arr)
    if url_arr.any? { |string| string.end_with?('.org' || '.io' || ',net' || '.com') }
        return false
    elsif url_arr.none? { |string| string.end_with?('.org' || '.io' || ',net' || '.com') }
        return true
    end
    false 
end

def any_passing_students? (students_arr)
   return students_arr.any? { |student| student[:grades].average >= 75 }
end