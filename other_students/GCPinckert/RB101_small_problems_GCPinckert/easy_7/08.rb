=begin
# Problem:
  - Input: 2 arrays of numbers
    - each will contain the same number of elements
    - all integer elements are positive integers greater than 0
  - Output: a new array
    - containing the product of each pair of numbers from both arrays
    - i.e. [ (arr1[0] * arr2[0]), (arr1[1], arr2[1]), etc)
  
# Examples:
  multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
    [ (3 * 9 = 27), (5 * 10) = 50), (7 * 11 = 77)]

# Algorithm:
- Initialize an empty array for results
- Initialize a loop from 0 to the size of array minus 1
  - multiply the current iterations/index element from each array
  - append the product to the results array
- Return the results array
=end

def multiply_list(arr1, arr2)
  products = []

  (arr1.size).times do |idx|
    products << (arr1[idx] * arr2[idx])
  end

  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]