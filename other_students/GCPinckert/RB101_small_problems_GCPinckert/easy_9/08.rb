=begin
# Problem:
  - Input: 2 integers
    - the first represents a count
      - will not be a negative number
      - may be 0 (returns an empty array)
    - the second is the first number of a sequence the method should create
      - may be either positive, negative, or 0
  - Output: an array
    - containing the same number of elements as the input count
    - the values of each will be multiples of the input starting number

# Examples:
sequence(5, 1) == [1, 2, 3, 4, 5]
  - a sequence of 5 multiples of 1 starting at 1
  - [1 * 1, 1 * 2, 1 * 3, 1 * 4, 1 * 5]
sequence(4, -7) == [-7, -14, -21, -28]
  - a sequence of 4 multiples of -7 starting at -7
  - [-7 * 1, -7 * 2, -7 * 3 ... etc]
sequence(3, 0) == [0, 0, 0]
  - a sequence of 3 multiples of 0 starting at 0
  - [0 * 1, 0 * 2, 0 * 3]
sequence(0, 1000000) == []
  - a sequence of 0 multiples of 1,000,000 starting at 1,000,000
  - Here the loop does not execute and we return an empty array

# Algorithm
- Initialize a variable multiples to an empty array
- Create a loop that tracks iterations beginning at 1 and going up to and including the 1st argument
  - multiply the starting num by the iteration num
  - Add the result to the multiples array
- Return the multiples array
=end

def sequence(count, start)
  multiples = []

  1.upto(count) do |num|
    multiples << (start * num)
  end

  multiples
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
