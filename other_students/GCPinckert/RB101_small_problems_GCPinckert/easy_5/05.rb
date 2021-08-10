# Given a string that consists of some words (all lowercased)
# And an assortment of non-alphabetic characters
# Return a string with all the non-alphabetic chars replaced with spaces
# If one of more non-alphabetic chars occur in a row
  # Only have one space in the result
# Regular punctuation in the input should also be converted to spaces
# The output should not have more than one consecutive space

# Initialize an empty string `result`
# Divide the string into an array of characters
# For each character in the string
# Is the character non-alphabetical?
  # Is the character before it non-alphabetical?
    # If yes, go to next iteration
  # If no, add a space to result
  # If the character is alphabetical, add it to result
# Return result

def cleanup(string)
  result = ''
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      result << char
    else
      result << ' ' unless result[-1] == ' '
    end
  end

  result
end

puts cleanup("---what's my +*& line?") == ' what s my line '

=begin
Revisited this 5/14/21 and was able to pull regex solution out on my own. Cheers!
# Problem
- Input: a string
  - contains some words
  - all letters lowercase
  - assortment of non-alphabetic characters
- Output: return same calling string (problem language "that string")
  - same words as input string
  - all non-alphabetic characters replaced by spaces
  - if one or more non-alphabetic characters occur next to each other, they are represented by a single space
  - no consecutive spaces

# Examples:
cleanup("---what's my +*& line?") == ' what s my line '

# Algorithm
- Go through given string and substitute a space for any non-alphabetic character
- Get rid of any consecutive spaces
- Return the result
=end

def cleanup2(string)
  string.gsub!(/[^a-z]/, ' ')
  string.squeeze!
end

p cleanup2("---what's my +*& line?") == ' what s my line '
