# Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates).

# For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

=begin
PROBLEM

Input: Array of strings
Output: New array of character strings


EXAMPLES
bella, label, roller   => e, l, l

{
  b => [1, 1, 0],
  e => [1, 1, 1[,
  l => [2, 2, 2],
}


DATA STRUCTURES

Strings
Integers
Arrays
Hash

ALGORITHM
High-Level:
- initialize `alphabet` local variable to a hash containing all lowercase letters as keys with empty array as values.

- iterate through every word in `words` array with an `index` - `word` and `index` are block parameters
  - iterate through every `character` in each `word` string with `index` - `character`is a block parameter
    - for `character` as key in `alphabet` hash, increment the integer by `1` at `index` in the value array

- remove key-value pairs where value array includes 0
- return a new array containing the key and the minimum value from the value array for each key

- convert this new array to a hash
- add the character for each key the value number of times to the `common` array
- return `common` arrray

CODE
=end


def common_chars(words)
  common = []

  letters = ('a'..'z').to_a
  array_value = []
  words.length.times { |n| array_value << 0 }
  values = letters.map { |letter| array_value.clone }
  alphabet = letters.zip(values).to_h

  words.each_with_index do |word, word_index|
    word.chars.each do |char|
      alphabet[char][word_index] += 1
    end
  end

  alphabet.reject! { |letter, counts_array| counts_array.include?(0) }

  minimums = alphabet.map { |letter, counts_array| [letter, counts_array.min] }

  minimums.each do |letter, count|
    count.times do
      common << letter
    end
  end

  common
end


def  common_chars(words)
  words = words.map { |word| word.clone }

  chars = words.shift.chars

  chars.select do |char|
    words.all? { |word| word.sub!(char, '') }
  end
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []
