# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# monkey patching extends Array class
class Array
    # Find the longest fish in O(n^2) time. 
    # Do this by comparing all fish lengths to all other fish lengths
    def quadratic
        longest_fish = self.first
        self.each do |fish|
            self.each do |other_fish|
                longest_fish = fish if fish.length > other_fish.length
            end
        end
        longest_fish
    end

    # Find the longest fish in O(n log n) time. 
    # Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. 
    # Remember that Big O is classified by the dominant term.

    def linearithmic
        queue = []
        queue << self.first 
        longest_fish = queue.first
        while !queue.empty?
            longest_fish = queue.first if queue.first.length > longest_fish.length
            self[1..self.length].each do 
                |fish| queue << fish
                queue.shift
            end
        end
        longest_fish
    end

end