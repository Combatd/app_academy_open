# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)
    vowels = ['a', 'e', 'i', 'o', 'u']
    pairs = [] # empty array
    words.each_with_index do |word_1, i|
        words.each_with_index do |word_2, j|
            pair = word_1 + " " + word_2
            if j > i && vowels.all? { |vow| pair.include?(vow) } 
             pairs << pair
            end
        end
    end
    pairs
end


# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)
    (2...num).each { |factor| return true if num % factor === 0 }
    false
end


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)
    new_arr = [] # empty array
    bigrams.each_with_index do |ele, i|
        new_arr << ele if str.include?(ele)
    end
    new_arr # return the new array
end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc) # class method
        select_hash = {} # empty hash
        # nil as falsey shorthand
        prc ||= Proc.new { |k, v| k == v}
        self.each_pair do |k, v|
           select_hash[k] = v if prc.call(k, v)
        end

        select_hash
    end
end

class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)
         strArr = [] # empty array
        string = self
         i = 0

        while i < string.length - 1
            newStr = '' # string empties each loop iteration
        
            string.each_char.with_index do |char, j|
            if j >= i
                newStr += char
                if length != nil
                # each time a char added, it is a new ele of strArr
                    strArr << newStr if newStr.length === length
                else
                    strArr << newStr
                end
            end    
        end # end each char loop
        i += 1
    end  # end while loop
    strArr << string[-1] # shovel last character in the array
    
    if length != nil
        strArr.each_with_index do |ele, i|
            strArr.delete(ele) if ele.length > length || ele.length < length
        end
    end
    
    strArr # return the array
    end


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)
        str = self
        alphabet = "abcdefghijklmnopqrstuvwxyz"
  	    newWord = "" # empty string

  	    str.each_char do |i| # string method to iterate through the characters of str
            oldEle = alphabet.index(i) # i would be the character of the string
            newEle = oldEle + num # number
            newChar = alphabet[newEle % 26] # it will find the character index that matches the alphabet index
            newWord += newChar
        end
        newWord
    end
end
