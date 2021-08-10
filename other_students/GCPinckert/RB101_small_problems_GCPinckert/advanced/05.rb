=begin
# Problem:
- Input: a matrix of m x n size represented as a nested array
- Output: a new nested array representing the matrix rotated 90 degrees clockwise
  - Produces a new matrix in which each side is rotated clockwise by 90 degrees
  1 2 3    7 4 1
  4 5 6 => 8 5 2
  7 8 9    9 6 3

  [0][0] -> [0][2], [0][1] -> [1][2], [0][2] -> [2][2]
  [1][0] -> [0][1], [1][1] -> [1][1], [1][2] -> [2][1]
  [2][0] -> [0][0], [2][1] -> [1][0], [2][2] -> [2][0]

# Examples:
1 5 8    3 4 1
4 7 2 => 9 7 5
3 9 6    6 2 8

[0][0] -> [0][2], [0][1] -> [1][2], [0][2] -> [2][2]
[1][0] -> [0][1], [1][1] -> [1][1], [1][2] -> [2][1]
[2][0] -> [0][0], [2][1] -> [1][0], [2][2] -> [2][0]

- the resulting row iterates from 0...outer array size
- the resulting column iterates from outer array size - 1 downto 0

3 4 1 => 9 3
9 7 5    7 4
         5 1
[0][0] -> [0][1], [0][2] -> [1][1], [0][2] -> [2][1]
[1][0] -> [0][0], [1][1] -> [1][0], [1][2] -> [2][0]

# Algorithm:
- Initialize a results grid
  - Initialize an empty array
  - For each element in a sub-array from input grid, add a []
  - Return result
- Rotate the grid
  - Initialize a column variable to array.size - 1
  - Iterate a loop from 0...outer array size, tracking iteration
    - Iterate a loop from 0...sub-array size, tracking iteration
      - Get the element at [outer i][inner i]
      - Append it to [inner i][column]
    - decrement column
  - Return the rotated grid
=end

def initialize_result_grid(input_grid)
  result = []
  input_grid[0].size.times do 
    result << []
  end

  result.each do |subarr|
    input_grid.size.times { subarr << nil }
  end

  result
end

def rotate90(input_grid)
  result_grid = initialize_result_grid(input_grid)
  column = input_grid.size - 1

  (0...input_grid.size).each do |rowi|
    (0...input_grid[0].size).each do |columni|
      result_grid[columni][column] = input_grid[rowi][columni]
    end
    column -= 1
  end

  result_grid
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]


new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
