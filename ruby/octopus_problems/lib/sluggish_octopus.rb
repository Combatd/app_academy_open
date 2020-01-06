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

end