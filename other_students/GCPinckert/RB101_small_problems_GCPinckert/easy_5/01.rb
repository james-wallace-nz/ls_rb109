=begin
# Problem
- Input: string
  - May contain one of more words
  - May be an empty string
- Output: an integer representing the ASCII string value
  - ASCII string value = sum of all ASCII values for all characters in the string
  - String#ord determines the ASCII value of a character
  - An empty string should return 0

# Examples
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Algorithm
- Convert the string to an array of characters
- Initialize a sum variable to 0
- Iterate over the chars, and add each ASCII value to the sum
- Return the sum
=end

def ascii_value(string)
  string.chars.reduce(0) do |sum, char|
    sum += char.ord
  end
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

=begin
# Further Exploration
What is the method represented by `mystery` in the following code?
char.ord.mystery == char

This is the chr method. chr returns a string that is associated with the integer
value that calls the method. 

97.chr = 'a'

It only deals in single characters
=end
