# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# input: integer
# output: array of digits in integer

# algorithm:
# - convert integer to string
# - split string into characters array
# - convert array elements back into integers
# - return characters in array

def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

# Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
