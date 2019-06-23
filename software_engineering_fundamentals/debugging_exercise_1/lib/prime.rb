# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, prime?, that accepts a number. It should return a boolean indicating whether or not the given number 
# is a prime. A prime number is only divisible by 1 and itself, it should have no other divisors.

require "byebug"
# boolean methods must have the '?'
def prime?(num)
    # do not include the num itself in the range for prime number check
    return false if num < 2
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    true # return true will happen after checking all integers below num
end