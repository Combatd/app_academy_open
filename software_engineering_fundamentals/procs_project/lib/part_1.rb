def my_map (arr, &prc)
    newArr = []
    
    arr.each { |num| newArr << prc.call(num) }

    newArr # return the new array
end