=begin
Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified. 

Input: an array
  - Containing any number of elements of any type
Output: a new array
  - Should contain the same number of elements as the input array
  - The first element should be the second element of the input array
  - The last element should be the first element of the input array
  - A one element array should return an array that is the same as the input
    array

Examples: 
  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
  rotate_array(['a']) == ['a']

  x = [1, 2, 3, 4]
  rotate_array(x) == [2, 3, 4, 1]   # => true
  x == [1, 2, 3, 4]                 # => true

Algorithm:
  - clone the input array
  - remove the first element from the cloned array & save it
  - add it to the end of the cloned array
  - return the clones array
=end

def rotate_array(array)
  result = array.clone
  result << result.shift
end

p "---Rotate Arrays---"
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Write a method that rotates a string instead of an array

def rotate_string(string)
  rotate_array(string.chars).join
end

p "---Rotate Strings---"
p rotate_string('abc') =='bca'
p rotate_string('a') == 'a'

# Write a method that rotates an integer

def rotate_ints(int)
  rotate_array(int.digits.reverse).join.to_i
end

p "---Rotate Integers---"
p rotate_ints(1234) == 2341
