=begin

PROBLEM
- Input: Array
- Output: Integer

rules
    - Explicit rules
      - Write a method that given an array of integers:
        - Find the minimum number to be inserted in a list, so that sum of all 
          elements of list should equal the closest prime number

DATA STRUCTURE
- Arrays
- Integers

ALGORITHM (main method)
- Sum elements within input array
  - Iterate through numbers 0 to 9
    - Add current number to the input array, sum elements,
      and check if that number is prime (subprocess)
      - If it is not prime, go to next number
      - If it is prime, return current number being iterated through

ALGORITHM (is?_prime)
- Return false if argument is equal to 1
- Check numbers between 2 and up to but not including argument
  - return false if argument % current number equals 0

- return true

PSEUDOCODE (main method)
- Accept an array (array)
- Iterate through numbers 0 to 9
  - Add current number to array (array + current_number) and sum
  - Check if that number is prime
    - If it is prime, return current_number

=end

def is_prime(integer)
  return false if integer == 1
  
  (2...integer).each do |current_number|
    return false if integer % current_number == 0
  end
  
  true
end

def minimum_number(array)
  lower_limit = 0
  upper_limit = 10
  
  loop do
    lower_limit.upto(upper_limit) do |number|
      return number if is_prime((array + [number]).sum)
    end
    
    lower_limit = upper_limit + 1
    upper_limit += 10
  end
end


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2
