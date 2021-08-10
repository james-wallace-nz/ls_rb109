=begin
# Problem:
  - Input: an array of words
    - test case words are all lowercase
  - Output: print to the console groups of anagrams
    - anagrams are words that are different combinations of the same letters
    - print the anagrams in an array (i.e. ['neon', 'none'])

# Examples:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
 => ["demo", "dome", "mode"]
 => ["neon", "none"]
 => (etc)
 
 # Data structures:
  - iterate over the given array and create a nested array of anagrams for each combination
  - then you can iterate over the nested array and output each subarray

# Algorithm:
- Group anagrams together into a nested array of anagram sub-arrays
  - Initialize total_anagrams to an empty array
  - Iterate over the input array, for each word
    - Iterate over the input array, select all those words that are anagrams of the current word
    - Append the resulting array of anagrams to the total_anagrams array
- Iterate over the anagram sub-arrays, outputting each

- Is it an anagram?
  - Convert the current word and the word to test into an array of chars
  - Order each array of chars alphabetically and see if they are equal
=end

def anagrams?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def group_anagrams(words)
  total_anagrams = []
  words.each do |word1|
    total_anagrams << words.select { |word2| anagrams?(word1, word2) }
  end
  total_anagrams.uniq
end

def display_anagrams(total_anagrams)
  total_anagrams.each { |anagrams| p anagrams }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

display_anagrams(group_anagrams(words))
