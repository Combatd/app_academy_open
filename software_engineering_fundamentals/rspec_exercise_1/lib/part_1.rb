# takes average of two number arguments
def average (numOne, numTwo)
    sum = numOne + numTwo
    avg = sum / 2.0
    
    return avg
end

# takes average of all numbers in array argument
def average_array (array)
    return array.sum * 1.0 / array.length * 1.0 
end

# accepts string and repeats it number of times
def repeat (str, num)
    newStr = ''
    
    num.times do
        newStr << str
    end

    return newStr
end

# yell accepts a string and makes it uppercase with an "!"
def yell (string)
    newStr = string.upcase
    return newStr += '!'
end