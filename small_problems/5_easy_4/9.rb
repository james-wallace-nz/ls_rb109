# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.


=begin
PROBLEM:

Convert an integer to string equivalent without using conversion methods

Input: integer
Output: string equivalent of integer

DATA STRUCTURE:

Integers
Strings
Hash

ALGORITHM:
- initialize `digits` variable to empty string
- iterate through digits in the integer
  - counter = 1
  - iterate increasing counter by 10 until divmod(counter)[1] == integer
    - digit equals integer.divmod(counter * 10) / (counter - 1) * 10

    - convert each digit to its string equivalent

    - increment counter by times 10
   - prepend string equivalent to `digits` variable
- return `digits` variable

CODE:
=end

# DIGITS = {
#   0 => '0',
#   1 => '1',
#   2 => '2',
#   3 => '3',
#   4 => '4',
#   5 => '5',
#   6 => '6',
#   7 => '7',
#   8 => '8',
#   9 => '9'
# }

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(integer)
  digits = ''

  counter = 1
   loop do
    digit = integer.divmod(10**counter)[1] / (10**(counter-1))
    string_digit = DIGITS[digit]
    digits.prepend(string_digit)

    break if integer == integer.divmod(10**counter)[1]
    counter += 1
  end

  digits
end

def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result
end


# Examples
puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

# def integer_loop(integer)
#   result = [integer]
#   p result
#   loop do
#     result = result[0].divmod(10)
#     p result
#     break if result[0] == 0
#   end
# end

# integer_loop(4321)