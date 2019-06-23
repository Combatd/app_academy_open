# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, titleize, that accepts a string representing a title 
# and capitalizes each word in a string except 'a', 'and', 'of', 'on', or 'the'.
# The first word of the title should be capitalized no matter what.

require "byebug"



def titleize(title)
  words = title.split(" ")
  # local scope for little_words
  little_words = [ "and", "the", "over", "a", "on", "of" ]
  
  # element , index for map method
  titleized_words = words.map.with_index do |word, i| 
    if i == 0 || !little_words.include?(word)
      word.capitalize
      # capitalize if not included in little_words array
    else
      word # return the same word if not meeting conditions
    end
  end
  
  titleized_words.join(" ")
end
