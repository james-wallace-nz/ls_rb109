# Write a method that takes one argument, a positive int
# and returns a list of the digits in that number

# input = positive integer
# output = list of integers (array)

# Given a positive integer of any length
# Split it up into an array 
# Each element in the array is a single digit in the integer
# Put array into correct order

def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# Option 2:

# Convert the integer into a string
# Convert the string into an array of chars
# Iterate over the array
  # Convert each element back to an integer
# Return the array of integers

def digit_list2(num)
  digits = num.to_s.chars
  digits.map { |digit| digit.to_i }
end

puts digit_list2(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list2(7) == [7]                     # => true
puts digit_list2(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list2(444) == [4, 4, 4]             # => true
