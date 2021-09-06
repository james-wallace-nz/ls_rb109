# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

=begin
PROBLEM
Replace non-alphanumeric characters with spaces
Multiple non-alphanumeric characters should be replaced with only one space


Input: String
Output: String with non-alphanumeric characters replaced by spaces


DATA STRUCTURES:

String


ALGORITHM:
- initialise `new_string` as empty string
- iterate over characters in string argument
  - if non-alphanumeric character and prior character is not non-alphanumeric or space
      add space to `new_string`
    otherwise
      add current character to `new_string`

- return new string


CODE
=end

def cleanup(string)
  new_string = ''

  string.chars.each_with_index do |char, index|
    char_alphanumeric = char.match(/[a-z0-9]/)
    if index == 0
      prior_char_alphanumeric = true
    else
      prior_char_alphanumeric = string[index - 1].match(/[a-z0-9]/)
    end


    # p [char_alphanumeric, prior_char_alphanumeric]

    if char_alphanumeric
      new_string << char
    elsif prior_char_alphanumeric
      new_string << ' '
    end
  end

  new_string
end


def cleanup(string)
  clean_chars = []

  string.chars.each do |char|
    if char.match(/[a-z]/)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end
  clean_chars.join
end

=begin
ALGORITHM:
- replace non-alphanumeric with spaces
- remove more than one consecutive
=end


def cleanup(string)
  string.gsub(/[^a-z0-9]/, " ").gsub(/\s+/, " ")
  # string.gsub(/[^a-z]/, ' ').squeeze(' ')
end


# Examples:
puts cleanup("---what's my +*& line?") == ' what s my line '
