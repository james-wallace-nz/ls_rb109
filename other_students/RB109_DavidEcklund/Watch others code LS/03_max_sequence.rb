=begin
Problem 1: Max sequence

The maximum sum subarray problem consists of finding the maximum sum of a contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. If the array is made up of negative numbers, return 0 instead. 

An empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray
=end

=begin

input = array of integers
output = contiguous chunk of integers with the max value
  if all positive = whole array
  if all negative = 0 (none of the elements)
  if empty = also 0
  
### Algorithm:
test for exceptions (empty, all neg, all pos)
make a new array of the results of adding every subsequence
  iterate through array, each element becomes the beginning of a new array
    loop:
      new array pops off end
      sum is added to result_array
      break if empty
then test for max and return it

=end

def max_sequence(input_array)
  return 0 if input_array.empty? || input_array.all? { |int| int < 0 }
  return input_array.sum if input_array.all? { |int| int > 0 }
  
  array_of_sums = []
  
  input_array.each_with_index do |int, index|
    temp_array = input_array[index..-1]
    temp_index = 1
    
    loop do
      array_of_sums << (temp_array[0..-temp_index].sum)
      temp_index += 1
      break if temp_index > temp_array.size
      
    end
    
  end
    
  array_of_sums.max
    
end


p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
