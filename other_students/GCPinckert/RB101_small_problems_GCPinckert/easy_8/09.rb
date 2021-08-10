=begin
Input: a positive integer
Output: integer with the digits reversed
  - Don't worry about return values with leading zeros
    - For example, if input = 1200, output = 21

Examples:
  reversed_number(12345) == 54321
  reversed_number(12213) == 31221
  reversed_number(456) == 654
  reversed_number(12000) == 21 # No leading zeros in return value!
  reversed_number(12003) == 30021
  reversed_number(1) == 1

Algorithm:
  - Convert the number to a string
  - Reverse the string
  - Convert the string back to an integer
  - Return the integer
=end

def reversed_number(num)
  num.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1

=begin
# Option 2: convert to array
# Problem:
  - Input: a positive non-zero integer
  - Output: an integer
    - Same value as input except digits are reversed
    - Does not need to include leading 0s in return value (i.e. 100 => 1)

# Examples:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

# Algorithm:
- Convert the integer to an array of digits.
- This returns the digits of the integer in reverse order
- Join the elements of the array and convert back to an integer
=end

def reversed_number2(number)
  number.digits.join.to_i
end

p reversed_number2(12345) == 54321
p reversed_number2(12213) == 31221
p reversed_number2(456) == 654
p reversed_number2(12000) == 21 # No leading zeros in return value!
p reversed_number2(12003) == 30021
p reversed_number2(1) == 1
