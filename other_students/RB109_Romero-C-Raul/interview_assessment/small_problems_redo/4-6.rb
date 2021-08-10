=begin

PROBLEM
- Input: array
- Output: array

rules
    - Explicit rules
      - Write a method that takes an array of numbers and returns
        and array with the same number of elements
        - Each element has the running total from the original array
    
    - Implicit rule
      - Single element array returns a single element array
      - Empty array returns empty array

DATA STRUCTURES
- Arrays
- Integers

ALGORITHM
- Go through each element in the input array
  - Add element to the running total
  - Add running total to collection

- Return the collection

=end

def running_total(array)
  collection = []
  current_total = 0
  
  array.each do |current_number|
    current_total += current_number
    collection << current_total
  end
  
  collection
end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []