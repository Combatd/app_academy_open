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

 
end
