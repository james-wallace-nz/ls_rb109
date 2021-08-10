=begin

PROBLEM
- Input: 2 arguments (array1, array2)
- Output: integer or float

rules
    - Explicit rules
      - Write a method that accepts two integer arrays of equal length and:
        - Compares the value of each member in one array to the corresponding
          member in other
        - Squares the absolute difference between those two values
        - Returns the average of those squared avsolute value difference

problem domain
  - absolute difference: difference squared

DATA STRUCTURE
- Arrays
- Integers

ALGORITHM
- Subtract the first element in the first array with first element in second array
  - Square the result and add it to a collection
  - Keep going until you have gone through all the elements

- Add up the elements in your colleciton and divide them by the number of elements
  in one of the arrays

=end

def solution(array1, array2)
  
  absolute_value_diff = array1.zip(array2).map do |pair|
    pair.reduce(:-) ** 2
  end
  
  absolute_value_diff.sum / array1.size.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
