# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# input: array
# output: array containing every odd element in argument array. odd is based on place in array not index

# algorithim:
# - initialize `new_array`
# - initialize `count` equal to `1`
# - iterate through argument array
#   - if `count` is odd
#     - add element to `new_array`
# - increment `count`
# - return `new_array`


def oddities(array)
  new_array = []
  count = 1
  array.each do |element|
    new_array << element if count.odd?
    count += 1
  end
  new_array
end

# Examples:
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
