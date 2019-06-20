def partition (arr, num)
    
    lessArr = []
    moreArr = []
    
    arr.each_with_index do |ele, i|
        if ele < num
            lessArr.push(ele)
        else
            moreArr.push(ele)
        end
    end
    
    partArr = []
    partArr[0] = lessArr
    partArr[1] = moreArr
    partArr # return partArr
end