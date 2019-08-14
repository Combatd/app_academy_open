# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    (1...num_1 * num_2).each do |multiple|
        return multiple if multiple % num_1 === 0 && multiple % num_2 === 0
    end
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    counts = Hash.new(0)
    (0...str.length-1).each do |i|
        bigram = str[i..i + 1]
        counts[bigram] += 1
    end

    sorted = counts.sort_by { |h,v| v } # sorts by value 
    sorted.last[0]
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
        count = 0 # accumulator
        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|
                count += 1 if self[i] + self[j] == num
            end         
        end
        count
    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
       prc = prc || Proc.new{|a,b| a <=> b}
       sorted = false

       until sorted
            sorted = true
            (0...self.length-1).each do |idx|
                if prc.call(self[idx], self[idx + 1]) > 0
                    self[idx], self[idx + 1] = self[idx + 1], self[idx]
                    sorted = false
                end
            end
       end
       self # return the sorted array
    end
end
