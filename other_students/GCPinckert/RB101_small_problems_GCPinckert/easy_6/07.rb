=begin
# Problem:
- Input: an array
  - May be an empty array, if so return two nested empty arrays
  - A one element array returns a nested array with the input array as the first subarray and the second subarray as empty
- Output: two arrays as a pair of nested sub-arrays
  - first subarray = the first half of the input array
  - second subarray = the second half of the input array
  - If the original array contains an odd # of elements
    - The middle element should be placed in the first half of the array

# Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Algorithm:
- Determine if the array length is odd or even
- If it is odd:
  - Return sub-array1 beginning at the first element up to the halfway index
  - Return sub-array2 beginning at the halfway index + 1 up to the end of the input array
- If it is even:
  - Return sub-array1 beginning at the first element up to the halfway index - 1
  - Return sub-array2 beginning at the halfway index up to the end of the input array
=end

def halvsies(array)
  halfway = array.size / 2
  if array.size.odd?
    [array[0..halfway], array[(halfway + 1)..-1]]
  else
    [array[0..(halfway - 1)], array[halfway..-1]]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
