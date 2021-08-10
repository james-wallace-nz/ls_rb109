=begin

PROBLEM
- Input: Array
- Output: Integer

rules
    - Write a method that given an array of integers, finds the index
      'N' where the sum of the integers to the left of N is equal to the 
      sum of integers to the right of 'N'
      - Return 0 if the array is empty
      - If there is no index that makes this happen, return -1

DATA STRUCTURE
- Integer
- Arrays

ALGORITHM
- Iterate through each index number available from the given string
      - Obtain the numbers to the left of the index number, sum them
      - Obtain the numbers to the right of the index number, sum them
      - Return index if left side equals right side

- Else return -1
  
=end

def find_even_index(array)
  array.each_with_index do |_, index|
    left_side = array[0...index].sum
    right_side = array[index + 1..-1].sum
    return index if left_side == right_side
  end
  
  -1
end


p find_even_index([1, 2, 3, 4, 3, 2, 1]) #== 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
