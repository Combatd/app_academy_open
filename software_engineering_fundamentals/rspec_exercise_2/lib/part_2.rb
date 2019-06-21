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