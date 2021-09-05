# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# input: array of integers
# output: array containing running total for each element

# data structure:

# integer
# array

# algorithim:
# - initialise `sum` equal to `0`
# - initialise `running_total` empty array
# - iterate over array argument
#   - increment `sum` by current element
#   - append `sum` to `running_total`
# - return `running_total`

# Examples:

def running_total(array)
  sum = 0
  running_total = []

  array.each do |element|
    sum += element
    running_total << sum
  end

  running_total
end

def running_total(array)
  sum = 0
  array.map do |element|
    sum += element
  end
end

def running_total(array)
  running_total = []
  array.reduce(0) do |sum, element|
    running_total << sum += element
    sum
  end
  running_total
end

def running_total(array)
  sum = 0
  running_total = []
  array.each_with_object(running_total) do |element, obj|
    obj << sum += element
  end

  running_total
end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
