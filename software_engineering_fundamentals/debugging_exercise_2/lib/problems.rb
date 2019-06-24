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