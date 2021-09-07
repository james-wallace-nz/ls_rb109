# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

=begin
PROBLEM
Take a string and return a hash of word length frequencies, where word lenght only includes letter characters

Input: string of words separated by spaces
Output: new hash containing the frequency of each word length


DATA STRUCTURES

Strings
Integers
Array
Hash


ALGORITHM
- initialize a new empty `freuqncy` hash
- split the string arugment into words based on spaces and assign to new `words` array variable
- iterate over `words` array
  - determine the word length based on letters only

  - update the hash key for that word length by incrementing its value by 1
- return the `frequency` hash


CODE
=end

def word_sizes(string)
  frequency = Hash.new(0)
  words = string.split

  words.each do |word|
    length = word.count("a-zA-Z")
    p length
    frequency[length] += 1
  end

  frequency
end

# Examples
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
