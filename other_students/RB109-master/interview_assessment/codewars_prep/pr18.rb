=begin
PROBLEM
- Input: Integer
- Output: Integer

rules
    - Explicit rules
      - Write a method that takes in a positive parameter num
        and returns its mutiplicative persistance

problem domain
  - Multiplicative persistance: the numer of times you must multiply
    the digits in num until you reach a single digit

DATA STRUCTURE
- Arrays
- Integers

ALGORITHM
- Split input integer into individual digits
  - Multiply all digits together:
    - Stop when all the digits multiplied together give you a single digit
      number
=end

def persistence(integer)
  counter = 0
  individual_digits = integer.digits
  
  loop do
    break if individual_digits.size <= 1
    individual_digits = individual_digits.reduce(:*).digits
    counter += 1
  end
  
  counter  
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
