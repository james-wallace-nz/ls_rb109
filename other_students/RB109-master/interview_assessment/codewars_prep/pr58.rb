=begin

PROBLEM
- Input: integer, integer
- Output: integer

rules
    - Explicit rules
      - Write a method that determines if there is a straight triple of a number
        at any place in num1, and also a straight double of the same number in num2

DATA STRUCTURE
- Arrays
- Integers

ALGORITHM
- Obtain all 3 consecutive characters in the first integer
- Obtain all 2 consecution characters in the second integer

- Iterate through the 3 consec chars subarrays
  - Add to a collection the sub_array which has the same 3 values

- Iterate through the 2 consec chars subarrays
  - Add to a collection the sub_array which has the same 2 values
  
- Delete duplicates from first array and second array and compare if it
  is the same character
  - If it is, return 1
  - If not, return 0

=end

def select_same_elements(array)
  array.select do |sub_array|
    sub_array.all? {|num| sub_array[0] == num }
  end.map(&:uniq)
end

def triple_double(num1, num2)
  triples = []
  num1.digits.reverse.each_cons(3) { |triple| triples << triple }
  straight_triple = select_same_elements(triples)
  
  return 0 if straight_triple.empty?
  
  doubles = []
  num2.digits.reverse.each_cons(2) { |double| doubles << double }
  straight_double = select_same_elements(doubles)
  
  return 0 if straight_double.empty?
  
  straight_double.each do |double|
    return 1 if straight_triple.include?(double)
  end
  
  0
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0