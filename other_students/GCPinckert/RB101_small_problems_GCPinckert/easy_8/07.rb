=begin
# Problem:
  - Input: a string
    - may be an empty string
  - Output: a new string
    - same value as the input string, except every character is doubled
    - an empty string returns an empty string
    - All characters should be doubled, including whitespace

# Examples:
repeater('Hello') == "HHeelllloo"
  [str[0], str[0], str[1], str[1], str[2], str[2]... etc ]
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# Algorithm:
  - Initialize doubled to an empty string
  - Iterate over the characters in the input string, tracking index
    - Add the current character twice to the doubled string
  - Return the doubled string
=end

def repeater(string)
  doubled = ''
  string.size.times { |index| doubled << string[index] * 2 }
  doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
