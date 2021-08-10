=begin
- Write a method that takes one argument, a string
- Returns a new string with words in reverse order

Examples:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

- Input = string
- Output = string

- Split string up into an array of words
- Reverse the order of the array
- Join the array elements together into a string
  - Separating each with a ' '
=end

def reverse_sentence(input_string)
  words = input_string.split(' ')
  words.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The above tests should all print `true`

# BONUS Try to do this without using Array#reverse

=begin
# Problem
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

- Input: a String
  - May be either with multiple words, one word, or empty string
- Output: a String, words from input string reversed
  - Return a new string, do not mutate input String
  - An empty string returns an empty String
  - Case is maintained in words
  - Do not use the reverse method (make it more difficult!)
  - A one words string returns a copy of the one word string

# Examples

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Data Structures
Convert to an array for manipulations then convert back to string for return value

# Algorithm
- Initialize an array of words in the input String
- Reverse the words in the array of words
    - Initialize an empty Array
    - Iterate over the array of words, add each word to the beginning of the `reversed` Array
- Join and return the `reversed` Array
=end

def reverse_sentence2(sentence)
  words = sentence.split
  reversed = []
  words.each { |word| reversed.unshift(word) }
  reversed.join(' ')
end

p reverse_sentence2('') == ''
p reverse_sentence2('Hello World') == 'World Hello'
p reverse_sentence2('Reverse these words') == 'words these Reverse'
