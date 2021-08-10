# Write a method that:
  # Returns an array containing every other element
  # Of an array passed in as an argument
  # Vals in the returned list should be 1st, 3rd, 5th elements of argument

def oddities(array)
  result = []
  array.each_with_index do |element, index|
    result << element if index.even?
  end

  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Further Exploration:
# Return the 2nd, 4th, 6th, and so on elements of the array

def even_elements(array)
  result = []
  array.each_with_index do |element, index|
    result << element if index.odd?
  end

  result
end

p even_elements([2, 3, 4, 5, 6]) == [3, 5]
p even_elements([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p even_elements(['abc', 'def']) == ['def']
p even_elements([123]) == []
p even_elements([]) == []

# Option 2:

# Algorithm:
  # Initialize a counter variable to 0
  # Iterate over the input array for selection
    # Increment the counter
    # Check to see if the counter is odd
  # Return the array which contains those elements for which the counter is odd

def oddities2(array)
  place = 0
  array.select do |ele|
    place += 1
    place.odd?
  end
end

p oddities2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities2(['abc', 'def']) == ['abc']
p oddities2([123]) == [123]
p oddities2([]) == []

# Option 3:

# Algorithm:
  # Iterate over the input array for selection
    # Check the index number for the current element
    # Is it even?
    # If so, add to returned array

def oddities3(array)
  array.select { |ele| array.index(ele).even? }
end

p oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities3(['abc', 'def']) == ['abc']
p oddities3([123]) == [123]
p oddities3([]) == []
