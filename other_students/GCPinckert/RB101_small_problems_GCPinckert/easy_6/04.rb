# Problem:
# - Input: an array
# - Output: return the same array object
  # - Reverses it's elements in place
  # - Do not use the built in reverse method
  # - If the array has only one element, it should not be modified
  # - If the array is empty, return an empty array

# Algorithm:
  # Create a copy of the array
  # Initialize a counter variable at -1
  # Iterate through the copy, for each element
    # Reassign the element in the original array at index counter
    # as the current element of the copy array
    # Decrement the counter
  # Return the original array

def reverse!(array)
  copy = array.clone
  index = -1

  copy.each do |element|
    array[index] = element
    index -= 1
  end

  array
end

puts list = [1,2,3,4]
puts result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true
puts 
puts list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true
puts 
puts list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true
puts 
puts list = []
puts reverse!(list) == [] # true
puts list == [] # true