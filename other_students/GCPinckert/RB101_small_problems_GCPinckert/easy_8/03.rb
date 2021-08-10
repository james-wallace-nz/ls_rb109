=begin
Input: string
  - Assume there will always be characters in the string
Output: array of substrings that start at the beginning of the original string
  - Arrange the values from shortest to longest
  - ie [string[0], string[0-1], string[0-2], etc]

Examples:
  leading_substrings('abc') == ['a', 'ab', 'abc']
  leading_substrings('a') == ['a']
  leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Algorithm:
  - Initialize a counter variable
  - Initialize an empty array
  - Loop while the counter is less than the size of the original string
    - Add the section of the string that is between index 0 and index counter to the array
  - Return the array
=end

def leading_substrings(string)
  counter = 0
  substrings = []

  loop do
    break if counter >= string.length
    substrings << string[0..counter]
    counter += 1
  end

  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
Option 2:
  - Use array method for iteration loop instead of loop with break condition
=end

def leading_substrings2(string)
  counter = 0
  string.chars.map do |char|
    counter += 1
    string[0, counter]
  end
end

p leading_substrings2('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
# Option 3
# Problem:
  - Input: a string containing at least one char
  - Output: an array of substrings
    - each element represents a substring that stars at index 0 of the input string
    - order the array from shortest to longest

# Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
  - [ string[0, 1], string[0, 2], string[0, 3] ]
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Algorithm:
- Initialize an empty array substrings
- Iterate a loop with a tracker for substring length
  - extract the substring beginning at index 0 with current length
  - append to substrings array
  - increment length on each iteration to have correct order to array
- return substrings array
=end

def leading_substrings3(string)
  substrings = []
  1.upto(string.size) { |length| substrings << string[0, length] }
  substrings
end

p leading_substrings3('abc') == ['a', 'ab', 'abc']
p leading_substrings3('a') == ['a']
p leading_substrings3('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
