# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

=begin

PROBLEM

convert integer to string equivalent with sign

input: integer
output: string equivalent

DATA STRUCTURES

integer
string
array

ALGORITHM
- determine string equivalent



CODE

=end

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result
end

def signed_integer_to_string(number)
  if number > 0
    sign = '+'
  elsif number < 0
    sign = '-'
  else
    sign = ''
  end

  number = number.abs
  string = integer_to_string(number)
  string.prepend(sign)
end

# Examples
puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
