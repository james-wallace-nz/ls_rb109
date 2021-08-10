# Write a method that:
  # Takes an integer as an argument
  # Returns true if that integer is palindromic
  # Returns false otherwise

def palindromic_number?(int)
  digits = int.digits
  digits.reverse == digits
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# Note: leading 0s turn an integer into an octal number
# Any conversions to different data types transfer this into a base 10
# How to isolate each digit to determine if the number is palindromic?
