=begin
Write a method that takes two numbers. It should print out all primes between
  the two numbers. Don't use ruby's prime class
  
  find_primes(3, 10)
  
PROBLEM
- Input: two integers, (integer1, integer2)
- Output: integer(s)? String?

rules:
    - Explicit rules:
      - Write a method that takes two numbers
        - It should print all primes between the two numbers

DATA STRUCTURES
- Integers
- Arrays
- Ranges

ALGORITHM (find_prime)
- Go through all integers between integer1 and integer 2
  - If current integer is prime, add it to a collection

- Join collection and return as a string

PSEUDOCODE (prime?)
- Return false if argument is 1
- Go through all numbers between 2 and the number you want 
  to check is prime (minus 1)
  - Return false if your argument % current number is equal to 0
- Return true at the end of the method

=end

def prime?(integer)
  return false if integer == 1
  (2...integer).each do |current_number|
    return false if integer % current_number == 0
  end
  
  true
end

def find_primes(integer1, integer2)
  prime_numbers = []
  
  integer1.upto(integer2) do |current_number|
    prime_numbers << current_number if prime?(current_number)
  end
  
  prime_numbers.join(", ")
end

p find_primes(3, 10)
