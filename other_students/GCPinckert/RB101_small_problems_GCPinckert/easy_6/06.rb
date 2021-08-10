=begin
# Problem:
- Input: two arrays
- Output: an array
  - containing all values from original two argument arrays
  - no duplicate values
  - even if duplicate values come from a single array
  
# Example:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Algorithm:
- Concatenate the two arrays together
- Get rid of any duplicate values
=end

def merge(array1, array2)
  (array1 + array2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
