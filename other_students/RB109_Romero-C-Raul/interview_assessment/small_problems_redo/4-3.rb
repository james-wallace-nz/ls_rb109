=begin

PROBLEM
- Input: Integer
- Output: Integer

rules
    - Explicit rules
      - Write a method that searches for all multiples betwee 3 or 5
        that lie between 1 and some other number and then computes
        the sum of those multiples
      - Assume the number passed is an integer greater than 1

DATA STRUCTURE
- Arrays
- Range
- Integers

ALGORITHM
- Obtain all numbers from 1 to the given integer
  - Go through all of those numbers and push the ones that are divisible
    by 2 and 5 to a collection

- Sum the elements in the collection and return

=end

def multisum(integer)
  divisible_numbers = []
  
  (1..integer).each do |number|
    divisible_numbers << number if number % 3 == 0 or number % 5 == 0
  end
  
  divisible_numbers.sum
end
  

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168