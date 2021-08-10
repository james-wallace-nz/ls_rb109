# Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

def find_primes(start_num, end_num)
  prime = []
  start_num = 2 if start_num == 1
  (start_num..end_num).to_a.each do |current_num|
    prime << current_num if (2...current_num).to_a.all? {|current_divisor| !(current_num % current_divisor == 0)}
  end
  prime
end


p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]  

    
=begin

input = two integers
output = all primes from one integer to the other, inclusive

rule: don't use Ruby's "prime" class

DATA

integers
array

ALGORITHM

initialize prime = []
test each number from start_num to end_num 
  that num cannot be evenly divided by any num from 2...itself then add it to the prime array
end
    
    
=end