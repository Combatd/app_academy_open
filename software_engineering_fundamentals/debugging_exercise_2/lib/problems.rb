# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
require "prime"

def largest_prime_factor (num)
   primeArr = [] # initialize empty array
   Prime.each(num) do |prime|
    primeArr << prime # shovel prime numbers into array
   end
   
   primeArr.reverse.each do |ele|
    return ele if num % ele == 0
   end # return largest prime number in array
end

def unique_chars?(str)
   charsHash = Hash.new(0) # initialize new hash with 0 values by default
    str.each_char.with_index do |k, i|
      charsHash[k] = 0
   end

   
   str.each_char.with_index do |char, j|
      if charsHash.has_key?(char)
            charsHash[char] += 1
      end
   end

   charsHash.each_value do |value|
      if value > 1
         return false
      end
    end
   return true
end

def dupe_indices (arr)
   charHash = Hash.new(0) # new hash with default 0 values

   arr.each_with_index do |char, i|
      charHash[char] = [] # put each char as a key with empty array value
   end

   arr.join('').each_char.with_index do |char, i|
      if charHash.include?(char)
         charHash[char] << i # shovel index into value array
      end
   end

   # delete if nested array (value) doesn't repeat
   charHash.delete_if {|key, value| value.length < 2} 

   charHash # return the charHash
end

def ana_array (arr1, arr2)
   # check if the two arrays are the same length
   return false if arr1.length != arr2.length 

   # create hashes to count the characters of both arrays
   hash1 = Hash.new(0)
   hash2 = Hash.new(0)

   firstHash = char_count(arr1, hash1)
   secondHash = char_count(arr2, hash2)

   if firstHash == secondHash
      return true
   end

   false

end

# helper methdo for ana_array
def char_count (arr, hash)
   arr.each_with_index do |k, i|
      hash[k] = 0
   end
   
   arr.each_with_index do |char, j|
      if hash.has_key?(char)
            hash[char] += 1
      end
   end

   return hash
end