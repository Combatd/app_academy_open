def palindrome? (str)
    i = str.length - 1
    reverseStr = ''
    
    while i >= 0
        reverseStr += str[i]
        i--  
    end

    if str == reverseStr
        true
    end

    false
end