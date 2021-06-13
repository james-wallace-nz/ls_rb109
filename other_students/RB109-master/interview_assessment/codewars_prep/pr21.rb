=begin
You've just discovered a square (NxN) field and you notice a warning sign. 
The sign states that there's a single 
bomb in the 2D grid-like field in front of you.

Write a method mineLocation that accepts a 2D array, and returns the location of the mine. 
The mine is represented as the integer 1 in the 2D array. 
Areas in the 2D array that are not the mine will be 
represented as 0s.

The location returned should be an array where the first element is the row index, and 
the second element is the column index of the bomb location (both should be 0 based). 

All 2D arrays passed into our function will be square (NxN), and there will only be one mine in the array.

PROBLEM
- Input: Array (contains nested arrays)
- Output: Array (single array, two elements)

rules
    - Explicit rules
      - Write a method that accepts a 2d array and returns the location of the mine
        - The mine is represented by integer 1, not-mines are represented by 0
        - Location returned should be array where the first element is the row index AND
          second element is column index

DATA STRUCTURE
- Arrays
- Integers

ALGORITHM
- Iterate through every sub array with an index
  - Iterate through every element with another index
    - If the current element, is equal to 1:
      - Push first index and second index to an array previously initialized

- Return final array
=end

def mineLocation(array)
  
  array.each_with_index do |sub_array, row|
    sub_array.each_with_index do |current_element, column|
      return [row, column] if current_element == 1
    end
  end
end