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