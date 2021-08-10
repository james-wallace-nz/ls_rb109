=begin
# Problem:
  - Input: a string
    - will always contain at least one character
  - Output: the middle character(s) of the input string
    - If input has an odd length, return only one character
    - If input has an even length, return two characters
    - Whitespace counts as a character
    - If the middle character is whitespace, that's what you should return
    - If the string has only one character, return that character

# Examples:
center_of('I love ruby') == 'e'
  [I0, ' 1', l2, o3, v4, e5, ' 6', r7, u8, b9, y10] => 11 characters. middle is 11 / 2 => 5
  middle => e5
center_of('Launch School') == ' '
  [L0, a1, u2, n3, c4, h5, ' 6', S7, c8, h9, o10, o11, l12] => 13 chars, middle 13/2 => 6
  middle => ' 6'
center_of('Launch') == 'un'
  [L0, a1, u2, n3, c4, h5] => 6 chars, middle => [6/2 -1, 6/2] => [2, 3] => 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
  [x0] => 1 char, middle => 1/2 => 0 => 'x0'

# Algorithm:
- Initialize a num_chars variable to the size of the input string
- Initialize a variable middle_index to size of input string divided by 2
- If num_chars is odd, return the char at index middle index
- If num_chars is even, return the two chars starting at index middle index - 1
=end

def center_of(string)
  num_chars = string.size
  middle_index = num_chars / 2
  
  num_chars.odd? ? string[middle_index] : string[(middle_index - 1), 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
