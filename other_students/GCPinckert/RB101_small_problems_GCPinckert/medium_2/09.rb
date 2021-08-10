=begin
# Problem:
Write a method that does a bubble sort of an Array

BUBBLE SORT
- Iterates over the input array multiple times.
- On each iteration, each pair of consecutive elements is compared
- If the first of the two elements is greater, they switch places
- This is repeated until a complete pass is made with no swaps

- Input: an array containing at least 2 elements
- Output: the same array, sorted "in-place" (ie mutating method)

# Examples:
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Algorithm:
- Initialize a loop
  - Iterate over the elements in the input array, tracking index
    - Compare the element at index i with the element at index i + 1
    - Switch their positions if element at index i is greater
  - Break the loop if all the elements when compared to i + 1 are not greater than
=end

def bubble_sort!(array)
  loop do
    (1...array.size).each do |i|
      if (array[i] <=> array[i - 1]) == -1
        array[i], array[i - 1] = array[i - 1], array[i]
      end
    end
    
    break if (array.select.with_index do |ele, i|
      (ele <=> array[i + 1]) == 1
    end).empty?
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
