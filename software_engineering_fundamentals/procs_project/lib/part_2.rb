def reverser (str, &prc) 
    newStr = '' # empty string
    newStr += prc.call(str.reverse) # pass in str.reverse to block
    newStr # return the newStr
end

def word_changer (str, &prc)
    newStr = '' # empty string
    wordArr = str.split(' ') # split array into elements of each word
    newArr = wordArr.map do |word, i| 
        prc.call(word)
    end
    return newArr.join(' ') # join array back into one string
end

def greater_proc_value (num, prc_1, prc_2)
    firstProcResult = prc_1.call(num)
    secondProcResult = prc_2.call(num)

    return firstProcResult if firstProcResult > secondProcResult
    return secondProcResult if secondProcResult > firstProcResult
end