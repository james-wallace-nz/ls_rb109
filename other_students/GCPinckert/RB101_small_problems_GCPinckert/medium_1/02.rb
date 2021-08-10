=begin
# Problem:
  - Input: 2 integers
    - num1 represents the number to rotate
    - num2 represents the amount of digits within the number to rotate (n)
  - Output: an integer, with the last n digits rotated
    - if n = 1 (rotating just 1 digit) returns the original input number

# Examples:
rotate_rightmost_digits(735291, 1) == 735291
  - switch the last digit in the number with itself, return the same number
  - num[5..-1]
  - length = 6. 6 - n = index 5
rotate_rightmost_digits(735291, 2) == 735219
  - rotate digit @ index -2 to the end of the number, 91 => 19
  - num[4..-1]
  - length = 6. 6 - n = index 4
rotate_rightmost_digits(735291, 3) == 735912
  - rotate digit @ index -3 to the end of the number, 291 => 912
  - num[3..-1]
  - length = 6. 6 - n = index 3
rotate_rightmost_digits(735291, 4) == 732915
  - rotate digit @ index -4 to the end of the number, 5291 => 2915
  - num[2..-1]
  - length = 6. 6 - n = index 2
rotate_rightmost_digits(735291, 5) == 752913
  - rotate digit @ index -5 to the end of the number, 35291 => 52913
  - num[1..-1]
  - length = 6. 6 - n = index 1
rotate_rightmost_digits(735291, 6) == 352917
  - num[0..-1]
  - rotate digit @ index -6 to the end of the number, 735291 => 352917
  - length = 6. 6 - n = index 0

# Algorithm:
- Convert the integer into num_string
- Set the section of num_string from index -n through index -1 to be rotated
  - Rotate the first element in substring to the end of substring
- Convert to an integer and return the result
=end

def rotate_rightmost_digits(number, n)
  num_string = number.to_s
  num_string[-n..-1] = rotate(num_string[-n..-1])
  num_string.to_i
end

def rotate(string)
  string[1..-1] + string[0]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
