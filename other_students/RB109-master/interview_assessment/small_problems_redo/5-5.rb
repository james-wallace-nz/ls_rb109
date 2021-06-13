# def cleanup(str)
#   str.tr('^a-zA-Z', ' ').squeeze
# end

=begin

PROBLEM
- Input: String
- Output: String

rules
    - Given a string, write a method that returns that string with
      all of the non alphabetic characters replaced by spaces
      - Result should not have consecutive spaces

DATA STRUCTURE
- String
- Arrays

ALGORITHM
- Go through each character in input string
  - If character is not a letter
    - push a space unless last character pushed is a space
  - Else
    - push letter
=end

def cleanup(string)
  clean_string = ''
  
  string.chars.each do |current_char|
    if ('a'..'z').include?(current_char)
      clean_string << current_char
    else
      clean_string << ' ' unless clean_string.end_with?(' ')
    end
  end
  
  clean_string
end

p cleanup("---what's my +*& line?") #== ' what s my line '