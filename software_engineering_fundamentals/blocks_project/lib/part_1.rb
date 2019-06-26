require "byebug"

def select_even_nums (arr)
    return evenArr = arr.select(&:even?) 
end

def reject_puppies (dogs)
    return dogsArr = dogs.reject{|dog| dog['age'] < 3 }
end