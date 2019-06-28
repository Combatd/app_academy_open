def all_words_capitalized? (word_arr)
    return true if word_arr.all? { |word| word == word.capitalize }
    false
end
# not solved yet
def no_valid_url? (url_arr)
   valid_urls = ['.com', '.net', '.io', '.org']
    # checks if NONE of the urls end with valid url endings
    url_arr.none? do |url|
        valid_urls.any? { |ending| url.end_with?(ending) }
    end

end

def any_passing_students? (students_arr)
   return students_arr.any? do |student|
       # sum divides by number of grades to get average
        avgGrade = student[:grades].sum / student[:grades].length 
        avgGrade >= 75 # checking for this condition
   end
end