=begin
# Problem
- Input: string with one or more words
  - a word is defined as a series of chars separated by spaces
  - words consist of _any_ string of characters that do not include a space
  - punctuation does not count as a character in a word when determining it's size
  - i.e. only include alphabetical characters when sizing the words
- Output: hash
  - shows the number of words of different sizes
  - key should be an integer representing the size of the word
  - value should be an integer representing how many words in the calling string have the key's size
  - an empty string returns an empty hash

# Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

# Algorithm
  - Split the string up into an array of words
  - Initialize an empty hash with default value of 0
  - Iterate over the array, for each word
    - count the number of alphabetical characters in the word
      - split the word into an array of characters
      - Iterate over the array, selecting only those characters that are alphabetical
      - Return the total number of alphabetical characters
    - Increment the value associated with the letter count by 1 in the hash
  - Return the hash
=end

def letter_count(word)
  word.chars.select { |char| ('a'..'z').include?(char.downcase) }.size
end

def word_sizes(sentence)
  words = sentence.split
  
  words.each_with_object(Hash.new(0)) do |word, sizes|
    sizes[letter_count(word)] += 1
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
