# Input: two arrays that have the same number of elements
  # the arrays will not be empty
# Output: one array which contains all elements from both input arrays
  # Each element from the input arrays should be taken in alteration

# Example:
  # interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Initialize an empty array
# Iterate through the first of the input arrays with index
  # Append the current element of the array to the empty array
  # Append the element at the current index in the other array
# Return the interwoven array

def interleave(array_a, array_b)
  interwoven = []
  array_a.each_with_index do |element, index|
    interwoven << element
    interwoven << array_b[index]
  end

  interwoven
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Option 2 - with a simple loop

# Initialize an empty array
# Initialize a counter variable
# While counter variable < size of input arrays * 2
  # Append element at current index in the interwoven array
  # Append element at current index in the interwoven array
  # Increment counter
# Return the interwoven array

def interleave2(array1, array2)
  interwoven = []
  counter = 0
  while counter < array1.size
    interwoven << array1[counter]
    interwoven << array2[counter]
    counter += 1
  end

  interwoven
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration
  # Rewrite the method to use Array#zip

def interleave3(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave3([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
