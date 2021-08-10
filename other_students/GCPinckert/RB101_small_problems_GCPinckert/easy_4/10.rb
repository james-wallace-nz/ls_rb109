=begin
# Problem
- Input: an integer
  - May be positive, negative, or 0
- Output: a string representation of the input integer
  - If the integer is positive, add a `+` to the front of the string
  - If negative, add a `-` to the front of the string
  - If 0, do not include a sign

# Examples
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

# Algorithm
- If the number is 0, return a string without a sign
- If the absolute value of the number equals the number, return a string with `+` at the front
- If the absolute value of the number does NOT equal the number, return a string with `-` at the front
=end

DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  num_string = ''
  digits = number.digits.reverse
  digits.each { |digit| num_string << DIGITS[digit] }
  num_string
end

def signed_integer_to_string(number)
  num_string = integer_to_string(number.abs)
  if number == 0
    num_string
  elsif number == number.abs
    '+' << num_string
  else
    '-' << num_string
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

=begin
# Further Exploration
- Refactor the solution to include only 1 integer_to_string calls
=end
