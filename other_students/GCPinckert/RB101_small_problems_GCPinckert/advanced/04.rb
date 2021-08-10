=begin
# Problems:
Create a transpose method that works with any matrix of at least 1 X 1
- Input: a nested array representing a matrix
  - Each sub-array represents a row
  - Elements of a common index from each sub-array represent a column

# Examples:
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
  [1 2 3 4] => [1] arr[0][0]
  arr[0][0]    [2] arr[1][0]
  arr[0][1]    [3] arr[2][0]
  arr[0][2]    [4] arr[3][0]
  arr[0][3]

transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]

transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]

  1 2 3 4 5 [0][0] [0][1] [0][2] [0][3] [0][4]
  4 3 2 1 0
  3 7 8 6 2

  1 4 3 [0][0]
  2 3 7 [1][0]
  3 2 8 [2][0]
  4 1 6 [3][0]
  5 0 2 [4][0]
transpose([[1]]) == [[1]]

# Algorithm:
- Generate result grid
  - Initialize an empty array
  - For each element in a subarray from input grid, add a []
  - Return result
- Iterate over the sub-arrays in the input grid, with index (rows)
  - Iterate over each element in the current sub-arrays with index (columns)
    - Add the current element to the index's element in the result matrix
- Return the result grid
=end

def initialize_result_grid(input_grid)
  result = []
  input_grid[0].size.times { result << [] }
  result
end

def transpose(input_grid)
  result_grid = initialize_result_grid(input_grid)

  input_grid.each_with_index do |row|
    row.each_with_index do |cell, column|
      result_grid[column] << cell
    end
  end

  result_grid
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]