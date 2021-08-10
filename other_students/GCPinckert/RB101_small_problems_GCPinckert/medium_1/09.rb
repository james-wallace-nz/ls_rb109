=begin
Notes:
- Some recursive methods can be very slow and require lots of memory
- Ruby isn't designed for heavy recursion
- The recursive solution from 08.rb is only useful up to about fibonacci(40)
- Rewrite the Fibonacci Numbers (08.rb) solution so that it computes its
  results without recursion
- Remember a Fibonacci number: F(n) = F(n - 1) + F(n - 2)

Examples:
  fibonacci(20) == 6765
  fibonacci(100) == 354224848179261915075
  fibonacci(100_001) # => 4202692702.....8285979669707537501

Algorithm:
- Input: n, the index number of the desired Fibonacci number
- Output: int, the desired Fibonacci number

- Initialize an array `fibonacci` to [1, 1]
- Initialize a counter to 2
- While the counter is <= n
  - Add fibonacci[counter - 1] and fibonacci[counter - 2]
  - Push the result onto the fibonacci array
  - Increment counter by 1
- Return the last number in the fibonacci array
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

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501