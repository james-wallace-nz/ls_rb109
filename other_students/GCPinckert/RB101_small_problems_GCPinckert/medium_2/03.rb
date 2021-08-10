=begin
# Problem
- Input: a string
  - Will always contain at least one character
- Output: a hash with three entries
  - lowercase: value is an integer representing % of chars in the string that are lowercase
  - uppercase: value is an integer representing % of chars in the string that are uppercase
  - neither: value is a percentage representing % of chars in the string that are neither
    - spaces count as neither characters

# Examples
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
  total chars = 10
  lowercase = 5 = (5 / 10) * 100 = 50
  uppercase = 1 = (1 / 10) * 100 = 10
  neither = 4 = (4 / 10) * 100 = 40
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Algorithm:
- Initialize a hash
- Get the total count of characters in the word
  - Get the count of current character type 
  - Divide by the total count of chars and multiply by 100
  - Add this to the current value
- Return the hash
=end

def letter_percentages(string)
  percentages = {}
  total_chars = string.size.to_f
  
  percentages[:lowercase] = ( string.count('a-z') / total_chars ) * 100
  percentages[:uppercase] = ( string.count('A-Z') / total_chars ) * 100
  percentages[:neither] = ( string.count('^A-Za-z') / total_chars ) * 100
  
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
