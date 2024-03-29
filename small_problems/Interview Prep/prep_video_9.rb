# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# For example:

# Let's say you are given the array [1, 2, 3, 4, 3, 2, 1]:
# Your method will return the index 3, because at the 3rd position of the array, the sum of left side of the index [1, 2, 3] and the sum of the right side [3, 2, 1] both equal 6.

# Example 2:
# You are given the array [20, 10, -80, 10, 10, 15, 35]
# At index 0 the left side is []
# The right side is [10, -80, 10, 10, 15, 35]
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and the right side are equal.

=begin
PROBLEM
Which index in an array makes the sum of elements to the left and right equal the same sum

Input: Array of integers
Output: integer for index or -1

Explicit Rules:


Implicit Rules:


Questions:


EXAMPLES

first iteration, left equals 0
left = 0, index = 0, right index 1..6
left = 0..0, index = 1, right index 2..6


DATA STRUCTURES

Integers
Arrays


ALGORITHM
High-level:
- start at index 0 and work to the middle
  - on each iteration, increase the range of elements considered
  - compare to the sum of the range on the other side of the index
  - index is not included


- initialize `index` and assign to [0]
- initialize `left` and also assign to 0
- initialize `right` and assign to [0]

- loop from index 0 to array length - 1
  - assign left to range `0` to `current_index` unless `index` is equal to 0

  - if index is equal equal to array length - 1
    - assign `right` to array `[0]`
    - otherwise assign `right` to range `current_index` + 1 to exclusive` length of array

  - left_sum = sum of left array
  - right_sum = sum of right array

  - return true if `left_sum` is equal to `right_sum`

  - increment index by 1
  - break from loop if index is equal to array length

- otherwise return false



CODE
=end

def find_even_index(array)
  index = 0
  left = [0]
  right = [0]

  loop do
    left = array[0..(index -1)] unless index == 0

    if index == array.length - 1
      right = [0]
    else
      right = array[(index + 1)...array.length]
    end

    left_sum = left.sum
    right_sum = right.sum

    return index if left_sum == right_sum

    index += 1
    break if index >= array.length
  end

  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
