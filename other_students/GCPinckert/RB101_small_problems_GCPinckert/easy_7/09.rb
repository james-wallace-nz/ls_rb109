=begin
# Problem:
  - Input: 2 arrays containing integers
    - Neither will be empty
    - Each contains positive integer
    - They may be of different sizes
  - Output: an array of integers
    - Each element represents the product of a pair of numbers from each input array
    - Duplicates are allowed
    - The results should be sorted by increasing value

# Examples:
  multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
  [2, 4], [4, 3, 1, 2]
  2 * 4; 2 * 3; 2 * 1; 2 * 2 => 8, 6, 2, 4
  4 * 4; 4 * 3; 4 * 1; 4 * 2 => 16, 12, 4, 8
  => [8, 6, 2, 4, 16, 12, 4, 8]
  => [2, 4, 4, 6, 8, 8, 12, 16]

# Algorithm:
- Initialize an empty array for the results
- Iterate over arr1, for each element
  - Iterate over arr2, for each element
    - multiply arr1 current element by arr2 current element
    - append the product to the results array
- Sort and return the results array
=end

def multiply_all_pairs(arr1, arr2)
  results = []
  
  arr1.each do |ele_a|
    arr2.each { |ele_b| results << (ele_a * ele_b) }
  end
  
  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

