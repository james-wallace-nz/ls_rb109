=begin

PROBLEM
- Input: String
- Output: String

rules
    - Explicit rules
      - Write a method that given a string, returns a new string that:
        - Changes every characters case
        - Reverses the words from the input

DATA STRUCTURE
- Arrays
- Strings

ALGORITHM
- Iterate through each string character and identify full word
  - push word to beginning of array when you encounter a space
  - prepend space whenever encountered and reset the current word

=end

def string_transformer(string)
  string_characters = string.chars
  final_string = ''
  current_word = ''
  
  string_characters.each do |char|
    current_word << char.swapcase unless char == ' '
    if char == ' '
      final_string.prepend(current_word)
      final_string.prepend(char)
      current_word = ''
    end
  end
  
  final_string.prepend(current_word)
end

p string_transformer('Example string') #== 'STRING eXAMPLE'