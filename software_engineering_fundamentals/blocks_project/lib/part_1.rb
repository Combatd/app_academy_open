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