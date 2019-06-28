require "byebug"

def select_even_nums (arr)
    return evenArr = arr.select(&:even?) 
end

def reject_puppies (dogs)
    return dogsArr = dogs.reject{|dog| dog['age'] < 3 }
end

def is_positive? (num)
    return false if num < 0
    return true
end

def count_positive_subarrays (arr)
    return posiive_subarrays = arr.count{|subArr| subArr.sum > 0 }
end

def aba_translate (str)
    abaWord = '' # initialize empty string
    vowels = 'aeiou'

    str.each_char.with_index do |char, i|
        if vowels.include?(char)
            # add a b after every vowel followed by the same vowel
            abaWord += char + 'b' + char
        else
            abaWord += char # add the original char
        end
    end
    
    abaWord # return the string
end

def aba_array (word_arr)
    word_arr.map {|word| aba_translate(word)}
end