def my_map (arr, &prc)
    newArr = []
    
    arr.each { |num| newArr << prc.call(num) }

    newArr # return the new array
end

def my_select (arr, &prc)
    newArr = []
    arr.each { |num| newArr << num if prc.call(num) }
    newArr # return the new array
end

def my_count (arr, &prc)
    count = 0 # initialize an accumulator

    arr.each_with_index do |num, i|
        count += 1 if prc.call(num)
    end

    count
end
# ampersand converts proc to block of code
def my_any? (arr, &prc)
   hash = Hash.new(0)
    arr.each do |ele| 
       prc.call(ele)
       key = prc.call(ele)
       hash[key] += 1
    end
    return true if hash[true] > 0
    return false
end

def my_all? (arr, &prc)
    hash = Hash.new(0)
    arr.each do |ele| 
       prc.call(ele)
       key = prc.call(ele)
       hash[key] += 1
    end
    # should return true if all elements return true
    return true if hash[true] == arr.length
    return false
end

def my_none? (arr, &prc)
    hash = Hash.new(0)
    arr.each do |ele| 
       prc.call(ele)
       key = prc.call(ele)
       hash[key] += 1
    end
    # should return true if none of the elements are true according to block
    return true if hash[true] < 1
    return false
end