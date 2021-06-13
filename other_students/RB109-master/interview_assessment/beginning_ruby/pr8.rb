=begin
The maximum sum subarray problem consists of finding the maximum sum of a 
contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers and the 
maximum sum is the sum of the whole array. If the array is made up of negative 
numbers, return 0 instead. 

An empty array is considered to have zero greatest sum. Note that the empty array 
is also a valid subarray

PROBLEM
- Input: Array
- Output: Integer

-rules
    - Explicit rules
      - Write a method that obtains the maximum sum sub-array
      - Max sum subarray: maximum sum of a contigouous subsequence in an array of
        integers
      - Empty Array returns 0
      - Array with only negative numbers returns 0

DATA STRUCTURE
- Array
- Integers

ALGORITHM
- Obtain every sub-array from the given array and store it in a collection
- Go through each sub array, and sum its contents together
  - Return max value obtained from summing up each sub array
  
=end

def obtain_sub_arrays(array)
  sub_arrays = []
  
  0.upto(array.size - 1) do |index|
    1.upto(array.size - index) do |length|
    sub_arrays << array[index, length]
    end
  end
  
  sub_arrays
end

def max_sequence(array)
  return 0 if array.empty? || array.all? { |num| num < 0 }
  
  p sub_arrays = obtain_sub_arrays(array)
  
  sub_arrays.map! do |sub_array|
    sub_array.reduce(:+)
  end
  
  sub_arrays.max
end

# p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
