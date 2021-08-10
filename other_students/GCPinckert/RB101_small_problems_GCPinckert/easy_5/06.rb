=begin
# Problem
- Input: string with one or more words
  - a word is defined as a series of chars separated by spaces
  - words consist of _any_ string of characters that do not include a space
  - i.e. punctuation counts as a character in a word
- Output: hash
  - shows the number of words of different sizes
  - key should be an integer representing the size of the word
  - value should be an integer represeting how many words in the calling string have the key's size
  - an empty string returns an empty hash

# Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Algorithm
  - Split the string up into an array of words
  - Initialize an empty hash
  - Iterate over the array, for each word
    - Does the hash already include the key for the word size?
    - If yes, increment the value by 1
    - If no, add the key and set the value to 1
  - Return the hash
=end

def word_sizes(sentence)
  words = sentence.split
  words.each_with_object({}) do |word, sizes|
    current_size = word.size
    if sizes.keys.include?(current_size)
      sizes[current_size] += 1
    else
      sizes[current_size] = 1
    end
  end
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

=begin
Note: create a new hash that returns a default value of 0 for non-existant keys
to make the logic for this a little simpler:
sizes = Hash.new(0)
=end