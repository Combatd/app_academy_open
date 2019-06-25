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