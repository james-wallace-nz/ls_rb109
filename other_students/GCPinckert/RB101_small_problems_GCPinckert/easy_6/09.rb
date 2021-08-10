=begin
# Problem:
- Input: an array and a search value
  - May be an empty array
- Output: Boolean
  - true if the search value is present in the given array
  - false if the search value is not present in the given array
  - if nil is given as a search value, and an empty array is given, return false
  - do not use the built in include? method
  
# Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# Algorithm:
- Iterate over all the elements in the array
  - Select only those elements that are equal to the search value
- If the array of selected elements is empty, return false
- Otherwise, return true
=end

def include?(array, value)
  included = array.select { |element| element == value }
  !included.empty?
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
