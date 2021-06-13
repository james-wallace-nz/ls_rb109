=begin

PROBLEM
- Input: Integer
- Output: Integer

rules
    - Explicit rules
      - Write a method that given n, takes the sum of digits n recursively
        and stops when the sum is 1 digit

DATA STRUCTURE
- Arrays
- Integer

ALGORITHM
- Split input integer into digits
- Reduce digits by sum
  - If answer is not < 10 call function 
    - Split answer into digits and sum
    - Break when sum is < 10

=end

def digital_root(integer)
  total_sum = integer.digits.sum
  return total_sum if total_sum < 10
  
  digital_root(total_sum)
end


p digital_root(16) == 7 
p digital_root(456) == 6 
