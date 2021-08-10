# Write a method that takes one argument, an integer
# The integer may be positive, negative, or zero
# Return true if the number's absolute value is odd
# Otherwise, return false
# Assume the argument is a valid integer value

# input = positive or negative integer, or 0
# output = boolean object
# determine absolute value of num
  # if num is negative, absolute value = -num
  # if num is positive, absolute value = num
  # if num is 0, absolute value = 0
# if absolute value % 2 = 1 return true
# otherwise, return false

def is_odd?(num)
  num = -num if num < 0
  return true if num.remainder(2) == 1
  return false
end

# Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
