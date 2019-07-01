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

    count # return the number of elements that match prc conditions
end
# ampersand converts proc to block of code
def my_any? (arr, &prc)
   return arr.each { |ele| prc.call(ele) }
end