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

def merge (hash_1, hash_2)
    mergedHash = Hash.new(0)
    
    hash_1.each do |k,v|
        if hash_2[k] === hash_1[k]
            mergedHash[k] = hash_2[k] # take value of hash_2 if duplicate key
        end      
        mergedHash[k] = v
    end

    hash_2.each do |k,v|
        if hash_2[k] === hash_1[k]
            mergedHash[k] = hash_2[k]
        end
       mergedHash[k] = v 
    end
        
    mergedHash # return the merged hash
end