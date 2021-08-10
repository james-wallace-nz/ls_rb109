=begin
# Problem:
- Input: two sorted arrays
  - One array may be empty, if so, return the other array
- Output: a new array, containing all elements from both arguments in sorted order
  - You are not allowed to sort the results array
  - Build the result array one element at a time in the proper order
  - Do not mutate the input arrays

# Examples:
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

# Algorithm:
- Initialize an empty array for results
- Check to see if either array is empty. If so, return the other array
- Initialize an array1 index counter
- Initialize an array2 index counter
- Iterate a loop
  - break the loop when both counters are equal to the size of their respective
    arrays
  - Compare the element at array1 index with the element at array2 index
  - If arr1 index is less than arr2index
    - Append the arr1 index element
    - Increment the arr1 index counter
  - If arr2 index is less that arr1 index
    - Append the arr2 index element
    - Increment the arr2 index counter
  - If both elements are equal
    - Append both elements
    - Increment both counters
  - Otherwise (for the last element when one element will be nil)
    - If the arr1 index counter is < arr1.size - 1, append the associated ele
      and increment counter
    - If the arr2 index counter is < arr2.size - 1, append the associated ele
      and increment counter
- Return the result array
=end

def merge(arr1, arr2)
  return arr1 if arr2.empty?
  return arr2 if arr1.empty?

  merged_arr = []
  arr1_idx = 0
  arr2_idx = 0

  loop do
    break if arr1_idx >= arr1.size && arr2_idx >= arr2.size
    case arr1[arr1_idx] <=> arr2[arr2_idx]
    when 1
      merged_arr << arr2[arr2_idx]
      arr2_idx += 1
    when -1
      merged_arr << arr1[arr1_idx]
      arr1_idx += 1
    when 0
      merged_arr << arr1[arr1_idx]
      merged_arr << arr2[arr2_idx]
      arr1_idx += 1
      arr2_idx += 1
    else
      if arr2_idx >= arr2.size
        merged_arr << arr1[arr1_idx]
        arr1_idx += 1
      elsif arr1_idx >= arr1.size
        merged_arr << arr2[arr2_idx]
        arr2_idx += 1
      end
    end
  end
  
  merged_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
