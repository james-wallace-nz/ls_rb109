=begin
Notes:
- The Fibonacci series is a sequence of numbers starting with 1 and 1
- Each number is the sum of the two previous numbers:
  - i.e. 1, 1, 2 (1 + 1), 3 (2 + 1), 5 (2 + 3), etc
  - F(n) = F(n - 1) + F(n - 2) when n > 2
- A recursive method is one in which the method calls itself
  def sum(n)
    return 1 if n == 1
    n + sum (n - 1)
  end
  - Will compute the sum of all integers between 1 and `n`
  - n + sum(n - 1) uses the return value of the recursive method call to
    compute a new return value
- Recursive methods have three primary qualities
  - They call themselves at least once
  - They have a condition that stops the recursion (n == 1 above)
  - They use the result returned by themselves
- Write a recursive method that computes the nth Fibonacci number, where nth
  is an argument to the method.

Algorithm:
- Input: integer (index of Fibonacci number to return)
- Output: integer (nth number of Fibonacci sequence

- Determine recursion stop condition:
  - n <= 2. If n = 2 then the sequence is as follows: 1, 1. 
  - If n is 3, then the formula holds: F3 = F(n-1) + F(n-2)
  - F(n-1) = F(2) # returns 1 + F(1) # returns 1 = 1 + 1 = 2
- Use the return value of a recursive method call to compute return value
  - Fn = F(n-1) + F(n-2)
=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

p fibonacci(30)
p fibonacci(40)
p fibonacci(50)