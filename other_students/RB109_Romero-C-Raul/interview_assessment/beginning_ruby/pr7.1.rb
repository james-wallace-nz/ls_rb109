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

- Obtain all digits from input integer
- Obtain longest largest number possible using those digits
  - Do this by sorting digits then joining them

- Iterate from input number to largest number
  - If current number has the same digits as input number
    - Return current number
  - If we iterate through all numbers and find to matches
    - Return -1

PSEUDOCODE
- Accept integer (integer)
- Return -1 if integer <= 9

- Initialize variable (digits); integer.digits
- Initialize variable (max_number); integer.digits.sort.join.to_i

- Iterate from integer + 1 to max number (block param |current_number|)
  - Return current_number if current_number.to_a.sort = digits.sort

- Return -1


=end

def next_bigger_num(integer)
  return -1 if integer <= 9

  digits = integer.digits.sort { |a, b| b <=> a }
  largest_num = digits.join.to_i
  
  (integer + 1).upto(largest_num) do |current_number|
    return current_number if current_number.digits.sort == integer.digits.sort
  end
  
  -1 
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
