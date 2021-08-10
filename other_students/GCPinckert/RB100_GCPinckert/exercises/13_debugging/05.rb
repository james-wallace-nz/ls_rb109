# Iterate through the numbers and return a new array with only even numbers
# Why does the given code not produce the expected output?
# Fix it to produce the expected result

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]

=begin   
The code does not produce the expected result because the return value
of the block passed to #map when n is not even is nil. Because we use
map, this value is applied to the array being returned by the method. 
Switch to the #select method, which will not create an array element 
in the new array if the block passed to it returns false. We will also
need to modify the block, simply to return true or false each time we
iterate through the array.
=end