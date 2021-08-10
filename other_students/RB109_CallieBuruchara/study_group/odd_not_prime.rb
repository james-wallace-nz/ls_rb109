# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

=begin
-input: positive integer
-output: positive integer
--> (1-input)
-> select numbers that are odd but NOT prime

-def not_prime(num)
- (2...num).any? 
--> num % n == 0

-iterate over a range of 1 until input
-select all odd numbers
^^ save that result to odd_numbers

-call select on odd_numbers, and select all numbers where not_prime is true
=end

def not_prime(num)
  if num > 1
    (2...num).any? {|n| num % n == 0}
  else
    true
  end
end

def odd_not_prime(num)
  (1..num).select {|n| n.odd? && not_prime(n)}.size
end


 p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20