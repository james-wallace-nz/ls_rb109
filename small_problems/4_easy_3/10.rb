# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# input: integer
# output: boolean - digits are palindrome

# algorithim:
# - convert integer to string
# - check if string is equal to its reverse

def palindromic_number?(integer)
  digits = integer.to_s
  digits == digits.reverse
end

# Examples:
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
