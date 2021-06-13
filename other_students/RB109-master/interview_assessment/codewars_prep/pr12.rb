=begin

PROBLEM:
- Input: String
- Output: boolean

rules
    - Explicit rules
      - Write a method, that given a string, detects whether or not it is 
        a pangram
      - Ignore numbers and punctuation

problem domain
  - Pangram contains letters a-z at least once

DATA STRUCTURE
- Strings
- Arrays
- Hashes(?)

ALGORITHM
- Create an array that contains all letters of the alphabet sorted

- Delete everything from input string that is not a letter
- Split string into individual characters and delete duplicates
- Sort array alphabetically and check if it is the same as the alphabet 
  array created initially

=end

def panagram?(string)
  string = string.downcase
  alphabet = ('a'..'z').to_a
  
  only_letters = string.tr('^A-Za-z', '')
  
  only_letters.chars.uniq.sort == alphabet
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
