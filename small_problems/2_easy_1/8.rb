# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# input: array of integers
# output: integer average of all array elements

# algorithm:
# - calculate sum of array elements
  # - use reduce
# - calculate length of array
# - divide sum by length

def average(array)
  # array.reduce(:+) / array.size
  array.reduce { |sum, n| sum + n } / array.size
  # array.sum / array.size
end

# Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# The tests above should print true.
