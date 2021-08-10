=begin
# Problem:
  - Input: a string
  - Output: an array containing all substrings from input string
    - A substring is any combination of characters that is at least 1 char 
    - Order the the array such that each substring occurs according to it's starting position
      - i.e. all substrings beginning at index 0 are first, all substrings beginning at index 1 are second...
    - Within each beginning index ordering, substrings should be ordered from shorted to longest
  - You may use the leading_substrings method from earlier

# Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Input 'abc' input size = 3
[ 'a' 'ab' 'abc' 'b' 'bc' 'c' ]
[ str[0, 1], str[0, 2], str[0, 3], str[1, 1], str[1, 2], str[2, 1] ]
[ [leading_substrings(str[0..-1])],
  [leading_substrings(str[1..-1])],
  [leading_substrings(str[2..-1])] ]

# Algorithm:
- Initialize empty array for substrings
- Create a loop with tracker for starting index
  - starting index begins with 0 and loop culminates when it is input string size - 1
  - get an array of all leading substrings of string beginning with current index
  - append that array to the substrings array
- flatten the substrings array and return the result
=end

def leading_substrings(string)
  substrings = []
  1.upto(string.size) { |length| substrings << string[0, length] }
  substrings
end

def substrings(string)
  substrings = []
  
  string.size.times do |index|
    substrings << leading_substrings(string[index..-1])
  end
  
  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
