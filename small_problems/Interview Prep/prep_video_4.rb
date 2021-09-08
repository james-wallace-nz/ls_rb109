# The maximum sum subarray problem consists of finding the maximum sum of a contiguous subsequence in an array of integers

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# should be 6: [4, -1, 2, 1]

# Easy case is when the array is made up of only positive number and the maximum sum is the sum of the whole array
# If the array is made up of only negative numbers, return 0 instead
# Empty array is considered to have zero greatest sum.

# Note that the empty array is also a valid subarray

=begin
PROBLEM
Find the subarray with the largest sum


Input: array of integers
Output:
1) greatest sum from sub-arrays
2) 0 if all integers are negative
3) 0 if input is []


EXAMPLES
[-2, 1, -3, 4, -1, 2, 1, -5, 4]

subarray sequences:
-2
-2, 1
-2, 1, -3
-2, 1, -3, 4
-2, 1, -3, 4, -1
-2, 1, -3, 4, -1, 2
-2, 1, -3, 4, -1, 2, 1
-2, 1, -3, 4, -1, 2, 1, -5
-2, 1, -3, 4, -1, 2, 1, -5, -4
1
1, -3
1, -3, 4
1, -3, 4, -1
1, -3, 4, -1, 2
1, -3, 4, -1, 2, 1
1, -3, 4, -1, 2, 1, -5
1, -3, 4, -1, 2, 1, -5, -4


DATA STRUCTURES

Integers
Array


ALGORITHM
High-Level:
- return 0 if arguemnt is emtpy arrray
- return 0 if all elements are negative integers

- iterate through all subsequnce arrays
  - initialize `subsequence` variable to empty array

  - initialize `start_index` = 0
  - loop
    - initialize `stop_index` variable to equal `start_index`
    - loop
      - `sequence` is equal to `start_index` to `stop_index`
      - appended `sequence` to `subsequences`
      - increment `start_index` by 1
      - exit inner loop if `stop_index` is equal to `array` length

  - increment `start_index` by 1
  - exit loop if `index` is equal to `array` length

- sum each subsequence array
  - use max_by with sum called on the subsequence array
- return subsequence array with largest sum


CODE
=end

# def max_sequence(array)
#   return 0 if array.empty?
#   return 0 if array.all? { |n| n < 0 }
#   return array.sum if array.all? { |n| n > 0 }

#   subsequences = []

#   start_index = 0
#   loop do
#     stop_index = start_index
#     loop do
#       sequence = array[start_index..stop_index]
#       subsequences << sequence

#       stop_index += 1
#       break if stop_index == array.size
#     end

#     start_index += 1
#     break if start_index == array.size
#   end

#   max_subsequence = subsequences.max_by do |subsequence|
#                                           subsequence.sum
#                                         end

#   max_subsequence.sum
# end

def max_sequence(array)
  return 0 if array.empty?
  return 0 if array.all? { |n| n < 0 }
  return array.sum if array.all? { |n| n > 0 }

  subsequences = []

  (0...array.size).each do |start_index|
    (start_index...array.size).each do |stop_index|
      sequence = array[start_index..stop_index]
      subsequences << sequence
    end
  end

  max_subsequence = subsequences.max_by do |subsequence|
                                          subsequence.sum
                                        end

  max_subsequence.sum
end


p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
