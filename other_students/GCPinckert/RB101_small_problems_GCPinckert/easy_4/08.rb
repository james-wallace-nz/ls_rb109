=begin
# Problem
- Input: string of numerical characters
  - May have a leading `+` or `-` sign, or no sign
  - Will always contain a valid number
- Output: integer representation of the input string
  - If there is a leading `+`, return a positive integer
  - If there is a leading `-`, return a negative integer
  - If there is no sign, return a positive integer
- You may use the string_to_integer method from the previous exercise

# Examples
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

# Algorithm
- Check to see if the number is a positive or negative number
  - Is there a sign in front?
  - If `-`, then negative and remove sign
  - If `+` then positive and remove sign
  - If first char is number, then positive
- Convert modified string to integer and assign to number
- If negative, return number - number * 2
- Otherwise, return number
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(num_string)
  negative = (num_string[0] == '-')
  num_string = num_string[1..-1] unless ('0'..'9').cover?(num_string[0])
  
  number = string_to_integer(num_string)
  
  return -number if negative
  number
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
