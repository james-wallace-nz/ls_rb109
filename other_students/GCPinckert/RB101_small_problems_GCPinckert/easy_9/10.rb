=begin
Input: two dimensional array
  - Each sub array is a string and a number
  - The string represents the object (grocery item)
  - The number represents the quantity of the object
Output: a new array* (*clarify - return new array or self?)
  - array should be a single dimension (no sub-arrays)
  - Each value should be repeated the amount of times of the number in the
    input sub-array

# Examples: 
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  - apples - 3 => "apples" * 3
  - orange - 1 => "orange" * 1
  - bananas - 2 => "bananas" * 2

# Algorithm:
- Initialize a results array []
- Iterate over the input array, for each sub array
  - Add the fruit string to the results array quantity times
- Return the results array
=end

def buy_fruit(grocery_list)
  fruits = []
  grocery_list.each do |fruit, quantity|
    quantity.times { fruits << fruit }
  end
  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  