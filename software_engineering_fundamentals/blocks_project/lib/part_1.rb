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
    letterArr = str.split('')
    vowels = 'aeiou'
    vowel_finder = letterArr.find_index {|letter| letter.include?(vowels) }

    str.each_char.with_index do |letter, i|
        if letter.include?(vowels)
            str.insert(i, 'b' + letter)
        end
    end
    abaWord = letterArr.join('')
    str
end

def aba_array (word_arr)
    word_arr.select {|word| aba_translate(word)}
end