# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    (1...100).each do |multiple|
        return multiple if multiple % num_1 === 0 && multiple % num_2 === 0
    end
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    bigram_arr = [] # empty array
    bigram_hash = Hash.new(0)
    # get each bigram
    str.each_char.with_index do |ele, i|
        bigram_arr << ele += str[ (i + 1) % str.length]
    end
    
    bigram_arr.each do |bigram|
        bigram_hash.each_value {|val| bigram_hash[val] = bigram }
    end

end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        hash = self
        
        oldVals = hash.values
        oldKeys = hash.keys
        # zip takes array of keys and pases in array of values to the hash
        new_hash = Hash[oldVals.zip(oldKeys)]
        new_hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)

    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)

    end
end
