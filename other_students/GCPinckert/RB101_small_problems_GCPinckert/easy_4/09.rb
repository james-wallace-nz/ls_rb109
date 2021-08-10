=begin
# Problem
- Input: an integer
  - Will always be positive
  - May be 0
- Output: a string representation of that integer

- Do not use any of the standard conversion methods (to_s, string(), format, etc)

# Examples
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# Algorithm
- Create a conversion hash of numbers to string digits
- Initialize an empty string
- Convert the number to an array of digits
- Reverse the array of digits
- Iterate over the array, for each digit
  - Append the associated value in the hash to the empty string
- Return the empty string
=end

DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  num_string = ''
  digits = number.digits.reverse
  digits.each { |digit| num_string << DIGITS[digit] }
  num_string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
