# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

=begin
# rules:
# longest substring in alphabetical order
# all lowercase letters
# if there are multiple solutions, return the first one
# if the string has a length of 1 then return the string

# data structure: array

# algorithm:
# initialize a substrings variable to []
# iterate through the input string starting from the first character
# compare the proceeding characters with the current character to check for alphabetical order
# slice from the current element to the last character that appears in alphabetical order
# push that substring to substrings array object
# sort the substrings variable by length of each substring
# find the max length substring


- iterate through the string
- current variable -> current string
- longest variable -> replace with the current as needed

PSEUDO
- return the str if the length is 1
- current = input[0]
- longest = ''

- 1.upto(string.size-1) do |idx|
- if current[-1] =< str[idx]
-   current += str[idx]
- else
-   if current.length > longest.length
      longest = current
    end
    current = str[idx]
- end
- longest
=end

def longest(str)
  return str if str.length == 1
  current = str[0]
  longest = ''

  1.upto(str.size-1) do |idx|
    if current[-1] <= str[idx]
      current += str[idx]
    else
      if current.length > longest.length
        longest = current
      end
      current = str[idx]
    end
  end

  if current.length > longest.length
    longest = current
  end

  longest
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'