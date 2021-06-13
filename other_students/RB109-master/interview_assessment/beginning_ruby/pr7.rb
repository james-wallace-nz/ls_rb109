=begin
You have to create a method that takes a positive integer number and 
returns the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

PROBLEM
- Input: Integer
- Output: Integer

rules
    - Explicit rules
      - Write a method that takes a positive integer number and
        - RETURNS the next bigger number formed by the same digits
        - If no bigger number can be composed using those digits, return -1
        
    - Implicit rules
      - Single digit returns -1


DATA STRUCTURE
- Integers
- Arrays 

ALGORITHM
- If single digit return -1

- Split integer by digits and obtain all possible permutations
- Add those permutations to an array if they are greater or equal to integer, 
  and sort them
  - Obtain second value
  - If second value is equal to original number, return -1

PSEUDOCODE
- Accept integer (integer)
- Return -1 if integer is less than 9

- Obtain all permutations from integer and store into an array (permutations)
  - Join elements within permutation
  - Convert elements within array to integer
  - Obtain the second value from array
    - If value == integer, return -1
    - Else, return value

=end

def next_bigger_num(integer)
  return -1 if integer <= 9

  permutations = integer.digits.permutation.to_a.map(&:join).map(&:to_i).uniq

  final_permutations = permutations.select { |number| number >= integer }.sort
  
  final_permutations.size == 1 ? -1 : final_permutations[1]
  
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
