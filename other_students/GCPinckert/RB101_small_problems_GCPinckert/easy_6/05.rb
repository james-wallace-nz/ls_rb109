=begin
# Problem:
- Input: an array
- Output: a new array
  - All elements from the original array in reverse order
  - Do not modify the original list
  - Do not use reverse built in method
  - Do not use method you previously wrote
  - An empty array returns an empty array
  - A one element array returns an identical array

# Examples:
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

# Algorithm:
- Initialize a new empty array
- Initialize an index counter to -1
- Iterate over the input array
  - Add the current index counter's element to the new array
- Return the new array
=end

def reverse(array)
  reversed = []
  index = -1

  array.each do |element|
    reversed << array[index]
    index -= 1
  end

  reversed
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true
puts

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true

=begin
# Further Exploration
- Try to use each_with_object
=end

def reverse2(array)
  array.each_with_object([]) do |ele, result|
    result.unshift(ele)
  end
end

puts reverse2([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse2(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse2(['abc']) == ['abc']              # => true
puts reverse2([]) == []                        # => true
