=begin
# Problem:
- Input: an array of unsorted values
  - Contains only one type of data (all nums or all strings)
- Output: a new array sorted using MERGE SORT

MERGE SORT: A recursive sorting algorithm that breaks down elements into nested
sub-arrays, then recombining the sub-arrays in sorted order.

[9, 5, 7 1]
[[9, 5], [7, 1]]
[[[9], [5]], [[7], [1]]]
[[5, 9], [1, 7]]
[1, 5, 7, 9]

- Recursive methods have three primary qualities
  - They call themselves at least once
  - They have a condition that stops the recursion (n == 1 above)
  - They use the result returned by themselves

# Examples:
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == 
%w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == 
[1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# Algorithm:
- If the array passed as argument has only 1 element, return that array
- Split the array in half
- Call merge sort on each half
- Once each half is sorted, merge it
  - Use the merge method from 07.rb
- Return the merged and sorted array
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

def merge_sort(arr)
  return arr if arr.size == 1
  sub_a = arr[0...arr.size / 2]
  sub_b = arr[arr.size / 2..-1]

  merge(merge_sort(sub_a), merge_sort(sub_b))
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == 
%w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == 
[1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]