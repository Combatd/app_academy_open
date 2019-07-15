# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
 def span
    if self.length > 0
        difference = self.max - self.min
        return difference # return the difference
    else
        return nil      
    end  

 end

 def average
    if self.length > 0
        return average = self.sum * 1.00 / self.length * 1.00 # needs float result
    else    
        return nil
    end
 
 end

 def median
   return nil if self.length < 1
    sortedArr = self.sort!
    len = sortedArr.length
   if sortedArr.length % 2 == 0 # check if even
        return median = (sortedArr[(len - 1) / 2] + sortedArr[len / 2]) / 2.0
   else
        return median = sortedArr[len / 2]
   end
 end

 def counts
    countHash = Hash.new(0) # initialize hash with 0 default values
    self.each do |ele|
        countHash[ele] += 1
    end
    countHash # return the hash
 end

 def my_count (val)
    self.select{ |ele| ele === val }.length
 end

 def my_index (val)
    self.each_with_index {|ele, i| return i if ele === val }
    nil
 end

 def my_uniq
    sortedArr = self 
    
    countHash = Hash.new(0)
    sortedArr.each_with_index do |ele, i|
        countHash[ele] += 1
    end
    
    newArr = []
    # it will only select 1 of each hash key to put into new Array
    countHash.select { |key, val| newArr << key}
    
    newArr
 end

 def my_transpose
    arr = self
    transposeArr = []
    arr.each_with_index do |subArr, i|
        transposeArr[i] = [] # we will clear this each iteration
        subArr.each_with_index do |ele, j|
            transposeArr[i] << arr[j][i] # shovel the element to move it
        end
    end
    transposeArr
 end

end
