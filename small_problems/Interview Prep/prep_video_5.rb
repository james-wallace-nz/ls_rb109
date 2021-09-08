# Write a method to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string ""

# All given inputs are in lower case letters a-z

=begin

PROBELM
Return the longest prefix string from an array of strings

Input:
Output:
longest prefix string
or empty string '' if no common prefix


EXAMPLES

# Example 1)

# Input: ['flower', 'flow', 'flight']
# Output: 'fl'

# Example 2)

# Input: ['dog', 'racecar', 'car']
# Output: ''
# There is no common prefix among the input strings.


DATA STRUCTURES

Strings
Array


ALGORITHM
- we can look at any string within the array because the longest prefix must be the length of the shortest string

High-Level:
- initialize `longest` to empty string
- initialize `shortest_word` and assign minimum string from `words` array
- iterate through each subsequence of characters from index 0 in shortest string element in the `words` array argument
  - initalize `sequence` and assign substring from index 0 up to string length

  - iterate over each `word` in the `words` array from 0 to `current_index`
  - if all have the same character sequence as the `sequence` then reassign `sequence to `longest`

- return `sequence`

CODE
=end

def common_prefix(words)
  longest = ''

  shortest_word = words.min
  (0...shortest_word.length).each do |stop_index|
    sequence = shortest_word[0..stop_index]

    match = words.all? do |word|
      word[0..stop_index] == sequence
    end

    longest = sequence if match
  end

  longest
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['throne', 'throne']) == 'throne'
