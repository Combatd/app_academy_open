def partition (arr, num)
    partArr = [] # empty array
    lessArr = []
    moreArr = []
    
    arr.each_with_index do |ele, i|
        if i < num
            lessArr << ele
        else
            moreArr << ele
        end
    end
    partArr[0] << lessArr # shovel the numbers less than num into array
    partArr[1] << moreArr # shovel the numbers greater or equal to num in array
    
    partArr # return partArr
end