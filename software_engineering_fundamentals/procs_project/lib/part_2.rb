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