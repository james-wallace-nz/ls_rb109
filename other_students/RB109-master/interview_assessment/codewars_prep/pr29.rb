=begin

PROBLEM
- Input: string
- Output: array

rules
    - Explicit rules
      - Write a method that splits the string into pairs of two characters
        - If the string contains an odd number of characters then it should replace
          the missing second character
    - Implicit rules
      - Empty string returns an empty array

DATA STRUCTURE
- String
- Array

ALGORITHM
- Append an underscore to the string if the string length is odd

- Iterate through each character in string 
  - Take the first two elements and add them to a collection
  - Then take the next two elements etc... stop after you have gone through all characters
  
PSEUDOCODE
- Accept a string (string)
- Re-assign string to string with underscore appended if string.size is odd
- Initialize empty array (pairs)
- Initialize index value = 0 (index)

- Create a loop that runs for string.size / 2
  - push [index, 2] to pairs array
  - Increase index value by 2

- return pairs array
  
=end

def solution(string)
  string = string << '_' if string.size.odd?
  pairs = []
  index = 0
  
  1.upto(string.size / 2) do
    pairs << string[index, 2]
    index += 2
  end
  
  pairs
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
