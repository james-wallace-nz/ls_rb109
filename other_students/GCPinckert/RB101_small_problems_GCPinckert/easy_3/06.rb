# Exclusive or - you want only one of two conditions to be truthy (not both)
# Write an xor? function:
  # Takes 2 arguments
  # Returns true if only one of it's arguments is truthy
  # Returns false if neither argument is truthy
  # Returns false if both arguments are truthy
  # Return a boolean value

# Examples:
  # xor?(5.even?, 4.even?) == true
  # xor?(5.odd?, 4.odd?) == true
  # xor?(5.odd?, 4.even?) == false
  # xor?(5.even?, 4.odd?) == false

# Algorithm
  # Check to see if the boolean return values of the expressions/objects are equal
  # If they are the same (i.e. both true or both false) return false
  # Otherwise, return true

def xor?(a, b)
  !!a == !!b ? false : true
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?('hi', 'hi') == false
p xor?('hi', nil) == true
