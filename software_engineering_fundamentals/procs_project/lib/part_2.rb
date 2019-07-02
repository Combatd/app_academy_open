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

def and_selector (arr, prc_1, prc_2)
    newArr = [] # initialize empty array
    arr.each {|ele| newArr << ele if prc_1.call(ele) && prc_2.call(ele)}
    newArr # return the new array
end

def alternating_mapper (arr, prc_1, prc_2)
    newArr = [] # initialize empty array
    # even indices prc_1 and odd indices prc_2
    arr.each_with_index do |ele, i|
        if i == 0
            newArr << prc_1.call(ele)    
        elsif i == 1
            newArr << prc_2.call(ele)
        elsif i % 2 == 0
            newArr << prc_1.call(ele)
        else
            newArr << prc_2.call(ele)
        end
    end
    newArr # return the new array
end