# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# input: integer
# output: sum of digits

# algorithim:
# - convert integer to string
# - split string into characters array
# - convert characters in array to integers
# - sum array integers and return

def sum(integer)
  integer.to_s.chars.map(&:to_i).sum
end

# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each
