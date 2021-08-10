=begin

PROBLEM
- Input: String
- Ouput: String

rules
    - Explicit rules
      - Write a method that given a string, replaced every letter
        with its position in the alphabet

DATA STRUCTURE
- Arrays(?)
- Strings

ALGORITHM
- Iterate through each character in the given string
  - Find index value + 1 of current character
    - Push this value to a string or to a collection

- Return string or joined collection

=end

def alphabet_position(string)
  string = string.delete('^A-Za-z')
  alphabet = ('a'..'z').to_a
  
  string.chars.map do |current_letter|
    alphabet.index(current_letter.downcase) + 1
  end.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
