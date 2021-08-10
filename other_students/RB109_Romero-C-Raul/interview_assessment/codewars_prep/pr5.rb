=begin

PROBLEM
- Input: string
- Output: integer

rules
    - Explicit rules
      - Write a method that given a lowercase string (alpha, no spaces) return
        the length of the longest vowel substring

DATA STRUCTURE
- Arrays
- Strings

ALGORITHM
- Delete every character that is not a vowel
- Check how many vowels are there left in a row (or the max amount of vowels
  in a row)
  
PSEUDOCODE
- Accept a string (string)
- Replace every character that is not 'aeiou' with an empty space

- Split string by spaces and iterate through it
  - Obtain the string length within split string that is the longest
=end

def solve(string)
  only_vowels = string.tr('^aeiou', ' ').split(" ")

  longest_string = only_vowels.map do |string|
    string.size
  end
  
  longest_string.max
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

  
  