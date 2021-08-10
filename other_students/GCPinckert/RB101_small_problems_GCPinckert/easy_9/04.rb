=begin
# Problem:
  - Input: an integer
    - Will always be a valid integer that is greater than 0
  - Output: an array of integers
    - in sequence, between 1 and the argument, inclusive

# Examples:
sequence(5) == [1, 2, 3, 4, 5] # it is an inclusive range going up to the argument
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Algorithm:
- Initialize an inclusive range between 1 and the input num
- Convert that to an array and return it
=end

def sequence(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

=begin
# Further Exploration:
What if the argument is not greater than 0? (i.e. -1)
Return an array from -num up to -1
Alter your method to handle this case
=end

def sequence2(num)
  num > 0 ? (1..num).to_a : (num...0).to_a
end

p sequence2(5) == [1, 2, 3, 4, 5]
p sequence2(3) == [1, 2, 3]
p sequence2(1) == [1]
p sequence2(0) == []
p sequence2(-1) == [-1]
p sequence2(-3) == [-3, -2, -1]
p sequence2(-5) == [-5, -4, -3, -2, -1]
