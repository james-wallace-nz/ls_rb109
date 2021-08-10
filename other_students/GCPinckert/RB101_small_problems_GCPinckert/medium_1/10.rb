=begin
Write a method that returns the last digit of the nth Fibonacci number

Examples:
  fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
  fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
  fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
  fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
  fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
  fibonacci_last(123456789) # -> 4

Algorithm:
- Initialize sequence to [1, 1]
- Initialize a counter to 2
- While the counter is <= n
  - Add fibonacci[counter - 1] and fibonacci[counter - 2]
  - Push the result onto the fibonacci array
  - Increment counter by 1
- Convert the last number in the fibonacci array to a string
- Return the last char in the string
=end

def fibonacci(n)
  sequence = [1, 1]
  i = 2
  while i < n
    sequence << (sequence[i - 1] + sequence[i - 2])
    i += 1
  end

  sequence.last
end

def fibonacci_last(n)
  fibonacci(n).to_s[-1]
end

def fibonacci_last_faster(n)
  
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4