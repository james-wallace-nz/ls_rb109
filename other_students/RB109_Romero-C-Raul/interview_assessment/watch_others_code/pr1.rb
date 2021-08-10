=begin

PROBLEM
- Input: String
- Output: Boolean

rules
    - Explicit Rules
      - Write a method that given a non empty string, check if string can
        be constructed by taking a substring of it and appending multiple
        copies of th substring together
      - 'abab' is 'ab' twice -> This would return true
      - 'aba' has no pattern -> this would return false

DATA STRUCTURE
- Strings
- Arrays(?)

ALGORITHM
- Go through each leading substring formed from input string
  - Multiply leading substring by overall string length - substring length
    - Ex. substring 'ab' and string 'abab'
      - Multiply 'ab' by (4 - 2)
      - Return true if at any point this results in the same input string
  
- Return false if there were no repeating substrings found
=end

def repeated_substring_pattern(string)
  
  length = 1
  
  loop do 
    current_substring = string[0, length]
    break if current_substring == string
    
    repeated_string = current_substring * (string.size / current_substring.size)
    return true if repeated_string == string
    break if length >= string.size
    length += 1
    
  end
  false
end

p repeated_substring_pattern('abab')
p repeated_substring_pattern('aba')
p repeated_substring_pattern('aabaaba')
p repeated_substring_pattern('abaababaab')
p repeated_substring_pattern('abcabcabcabc')