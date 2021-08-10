=begin

PROBLEM
- Input: Integer
- Output: Integer

- rules
    - Explicit rules
      - Write a method that calculates and returns the index of the first
        Fibonacci number that has the number of digits specified as
        an argument
      - First Fibonacci has index 1

DATA STRUCTURE
- Integers
- Range
- Arrays (?)

ALGORITHM
- Go through each fibonacci number one by one
  - Check if the digits of the current fibonacci number 
    are greater than one
      - If true, return current fibonacci number

SUB PROCESS(obtain fibonacci number)
- First 2 numbers are 1 by definition
- Each subsequent number is the sum of the two previous numbers

PSEUDOCODE (obtain fibonacci number)
- Accept an integer (integer)
- Return 1 if integer <= 2

- Initialize counter = 3
- second_to_last_num = 1
- last_num = 1
- current_num = 0


- Start a loop 
  - INIT current_num = last_num + second_to_last_num
  
  - RE-ASSIGN second_to_last_num = last_num
  - RE-ASSIGN last_num = current_num
  
  - Increase current_num by 1
  - Break if counter >= integer

- Return current_num
=end

def obtain_fibonacci(integer)
  return 1 if integer <= 2
  
  counter = 3
  second_to_last_num = 1
  last_num = 1
  current_num = ''
  
  loop do 
    current_num = last_num + second_to_last_num
    second_to_last_num = last_num
    last_num = current_num
    
    break if counter >= integer
    counter += 1
  end
  
  current_num
end

def find_fibonacci_index_by_length(integer)
  current_index = 1
  
  loop do 
    current_number = obtain_fibonacci(current_index)
    return current_index if current_number.digits.size >= integer
    
    current_index += 1
  end
end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847