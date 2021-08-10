=begin
# Problem:
- Input: an integer, n
  - Will always be at least 1
- Output: an integer representing the difference between:
  - ((sum of first `n` positive integers)^ 2) - (sum of 1^2 ... n^2)

# Examples:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
   # -> (6)**2 - (1 + 4 + 9)
   # -> 36 - 14
   # -> 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
  # -> (1)**2 - (1**2) == 0
sum_square_difference(100) == 25164150

# Algorithm:
- Get the square of the sum of the first n positive integers
  - Create an array from 1 to n and get the sum
  - Return the square of the sum
- Get the sum of the squares of the first n positive integers
  - Initialize a variable sum to 0
  - Iterate from 1 to n tracking iteration number
    - square the iteration number, and add it to the sum
  - Return the sum
- Subtract the sum of the squares from the square of the sum
=end

def square_of_sum(n)
  (1..n).to_a.reduce(:+) ** 2
end

def sum_of_squares(n)
  sum = 0
  (1..n).each do |i|
    sum += i ** 2
  end

  sum
end

def sum_square_difference(n)
  square_of_sum(n) - sum_of_squares(n)
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
