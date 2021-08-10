=begin

PROBLEM
- Input: Integer
- Output: Integer

rules
    - Explicit rules
      - Write a method that returns 2 times the number provided as an
        argument unless the argument is a double number, double numbers
        should be provided as is
        
    - Implicit rules
      - Integers with non even number of digits cannot be double doubles

DATA STRUCTURE
- Integers
- Arrays

ALGORITHM
- Return integer * 2 if the amount of integer digits are odd

- Determine if given integer is double number
  - slice through [0, digits size /2]
  - Slice through [digits size / 2,  digits size / 2]
  - Compare and check if they are equal
=end

def twice(integer)
  return integer * 2 if integer.digits.size.odd?

  digits = integer.digits.reverse
  left_side = digits[0, digits.size / 2]
  right_side = digits[digits.size / 2, digits.size / 2]
  
  equal_sides = left_side == right_side
  
  equal_sides == true ? integer : integer * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10