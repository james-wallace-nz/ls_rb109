# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# input: integer
# output: string of 1s and 0s, starting with 1. length of string should match integer

# algorithm:
# - initialize empty string
# - iterate `integer` times
#   - if index is even then add `'1'` to string
#   - otherwise add `'0'` to string
# - return string

def stringy(integer)
  digits = ''
  integer.times do |index|
    digits << (index.even? ? '1' : '0')
  end
  digits
end

# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The tests above should print true.
