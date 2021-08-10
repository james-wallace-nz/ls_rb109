=begin
# Problem
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

- Input: an integer argument
  - Will always be greater than 1
- Output: return an integer
  - The sum of all multiples of 3 or 5 that lie between 1 and the given integer
  - If the given number is a multiple of 3 or 5, it should be included in the sum

# Examples
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# Algorithm
- Initialize an empty array
- Initialize a range from 1 to the given number
- Iterate over the range, for each number
  - Check to see if it is a multiple of 3 or 5
  - If yes, add the number to the array
  - If no, go to the next iteration
- Sum the array and return the result
=end

def multisum(num)
  multiples = []
  (1..num).each do |n|
    if n % 3 == 0 || n % 5 == 0
      multiples << n
    end
  end
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

=begin
# Further Exploration
Try writing a solution that uses inject (aka reduce)

# Algorithm
- Initialize an array from 1 to the given num (inclusive)
- Select only those elements that are multiples of 3 or 5
- Iterate over the new array with an accumulator object, for each element
  - Increment the accumulator by the element if it is a multiple of either 3 or 5
- Return the accumulator object
=end

def multisum2(num)
  (1..num).to_a.select { |n| n % 3 == 0 || n % 5 == 0 }.inject(:+)
end

puts multisum2(3) == 3
puts multisum2(5) == 8
puts multisum2(10) == 33
puts multisum2(1000) == 234168
