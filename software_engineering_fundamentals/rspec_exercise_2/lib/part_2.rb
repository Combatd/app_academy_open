def palindrome? (str)
    i = str.length - 1
    reverseStr = ''
    
    while i >= 0
        reverseStr += str[i]
        i -= 1
    end

    if str == reverseStr
       return true
    end

    return false
end

def substrings (string)
    strArr = [] # empty array
    i = 0

    while i < string.length - 1
        newStr = '' # string empties each loop iteration
        
        string.each_char.with_index do |char, j|
            if j >= i
                newStr += char
                strArr << newStr # each time a char added, it is a new ele of strArr
            end    
        end # end each char loop
        i += 1
    end  # end while loop
    strArr << string[-1] # shovel last character in the array
    strArr # return the array
end