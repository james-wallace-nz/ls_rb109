=begin
# Problem:
Transpose a 3x3 grid represented by nested arrays
- Input: a 3x3 matrix represented by a nested array
  - An outer array containing 3 sub-arrays
  - Each sub-array has 3 elements
  - Each sub-array represents a row of the matrix
  - Elements of common index numbers from each sub-array represent a column
- Output: a new 3x3 matrix represented by a nested array, transposed
  - Transposed = exchanging columns and rows in the original matrix
    0 1 2    0 3 6
    3 4 5 => 1 4 7
    6 7 8    2 5 8
  - Do not use the Array#transpose method or the Matrix class
  - Do not modify the original matrix

# Examples:
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Algorithm:
- Initialize a new empty array to be our new matrix
- Iterate over each sub-array in the input matrix
  - Iterate over each element from the current sub-array, with index
    - Add the current element to the sub-array in new_matrix of the current index
- Return the new_matrix
=end

def transpose(grid)
  result_grid = [[], [], []]

  grid.each do |row|
    row.each_with_index do |cell, column|
      result_grid[column] << cell
    end
  end

  result_grid
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
