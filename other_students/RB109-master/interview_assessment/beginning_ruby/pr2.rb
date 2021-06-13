=begin

PROBLEM
- Input: integer, integer (two arguments)
- Output: Multiple instances of an Integer, string 'Fizz', or string 'Buzz'

rules:
    - Explicit rules:
      - Write a method that takes two arguments:
        - First is the starting number, second is the ending number
        - Print out all the numbers between the two numbers, EXCEPT if:
          - Number divisible by 3, print 'Fizz'
          - Number divisible by 5, print 'Buzz'
          - Number divisible by 3 and 5, print 'FizzBuzz'

DATA STRUCTURE
- Integers
- Array(?)

ALGORITHM
- Go through every number starting from our first argument input all the way to the number
  that was out second argument input
  - If the current number is divisible by 3 and 5, print 'FizzBuzz'
  - If the number is divisible by 3 print 'Fizz'
  - If the number is divisible by 5 print 'Buzz'
  - If its neither of the above options, print the current number
=end

def fizzbuzz(int1, int2)
  fizzbuzz_array = []
  
  int1.upto(int2) do |current_number|
    if current_number % 3 == 0 && current_number % 5 == 0
      fizzbuzz_array << 'FizzBuzz'
    elsif current_number % 3 == 0
      fizzbuzz_array << 'Fizz'
    elsif current_number % 5 == 0
      fizzbuzz_array << 'Buzz'
    else
      fizzbuzz_array << current_number
    end
  end
  
 fizzbuzz_array.join(", ") 
end

p fizzbuzz(1, 15)