=begin
# Problem:
  - Input: an integer
  - Output: an integer representing the maximum rotation of digits for input num
    - You will not have to handle multiple 0s
    - Leading 0s get dropped (and that's ok)

# Examples:
max_rotation(735291) == 321579
  - rotate 6 rightmost digits => 352917
  - rotate 5 rightmost digits => 329175
  - rotate 4 rightmost digits => 321759
  - rotate 3 rightmost digits => 321597
  - rotate 2 rightmost digits => 321579
  - Iterate from length of num to 2
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

# Algorithm:
  - Convert the number to a string
  - Get the length of the string
  - Iterate a loop tracking iteration number from length of num_string down to 2
    - Rotate the iteration number's rightmost digits in the string
  - Return the string converted to an integer
  
  - Rotate n number rightmost chars in a string
    - Set the section of the string from -n index to -1 index to be rotated
      - Move the first element of the substring to the end of the substring
    - Return the string
=end

def rotate_substring(string)
  string[1..-1] + string[0]
end

def rotate_n_chars(string, n)
  string[-n..-1] = rotate_substring(string[-n..-1])
  string
end

def max_rotation(num)
  num_string = num.to_s
  num_string.size.downto(2) do |i|
    num_string = rotate_n_chars(num_string, i)
  end
  num_string.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
