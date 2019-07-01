def reverser (str, &prc) 
    newStr = '' # reverse the string first
    newStr += prc.call(str.reverse) # pass in str.reverse to block
    newStr # return the newStr
end