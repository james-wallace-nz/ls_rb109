=begin

PROBLEM
- Input: array
- Output: integer

rules
    - Explicit rules
      - Write a method that given an array of integers, determines the array
        index where the sum of integers to the left of index is equal to the sum
        of integers to the right

DATA STRUCTURE
- Arrays

ALGORITHM
- Iterate thorugh the array with index
  - Compare the sum of the sub_array from 0 up to but not including index and
    the sum of the sub_array from index + 1 to the last element

=end

def find_even_index(array)
  
  array.each_with_index do |number, index|
    return index if array[0...index].sum == array[index + 1..-1].sum
  end
  
  -1
end


p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
