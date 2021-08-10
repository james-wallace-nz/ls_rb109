=begin
Exercise 8, Challenge:
Given the following array, write a program that prints out groups of
words that are anagrams. Anagrams are words that have the same exact
letters in them but in a different order. Your output should look
something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc)
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

=begin
Strategy:
* For each element in the array, create a new array of the chars
* Add these to a new 2d array for all char combinations
* Get rid of duplicate char combinations
* Create new empty hash? 
* Each different array of letters = key
* Each value = empty array.
* Iterate through words array and if element matches any key in hash
  "push" it onto the empty array
* Output final hash values as shown
=end

letters = []
words.each { |word| letters.push(word.chars.sort) }

letters.uniq! 

anagrams = Hash.new

letters.each { |char_array| anagrams[char_array] = [] }

words.each do |word|
  chars = word.chars.sort
  anagrams.each do |key, value|
    if chars == key
      value.push(word)
    end
  end
end

# TODO refactor the code above so it all fits within one word.each block

anagrams.each_value { |anagrams| p anagrams }
