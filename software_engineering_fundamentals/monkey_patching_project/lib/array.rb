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

end
