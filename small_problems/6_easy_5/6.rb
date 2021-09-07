# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

=begin
PROBLEM

Take a string of words and return a hash with the frequency of word lengths

Input: String of words
Output: Hash of Integers - frequency of word sizes

A word is characters seaprated by spawces

- only strings
- return a new hash
- string contains at least one word
- word contains any characters that aren't a space


DATA STRUCTURES

Strings
Integers
Array
Hash


ALGORITHM
- initialize a new empty `freuqncy` hash
- split the string arugment into words based on spaces and assign to new `words` array variable
- iterate over `words` array
  - determine the word length
  - update the hash key for that word length by incrementing its value by 1
- return the `frequency` hash


CODE
=end

def word_sizes(string)
  frequency = Hash.new(0)
  words = string.split

  words.each do |word|
    length = word.length
    frequency[length] += 1
  end

  frequency
end

# Examples
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
