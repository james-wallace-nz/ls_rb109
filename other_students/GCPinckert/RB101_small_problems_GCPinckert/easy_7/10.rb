=begin
# Problem:
  - Input: a string
    - containing at least two or more words
  - Output: a string, penultimate word in the input string
    - words are any sequence of non-blank characters, i.e. awesome!

# Examples:
  penultimate('last word') == 'last'
    ['last', 'word'], 'last' is second to last so it is returned
  penultimate('Launch School is great!') == 'is'

# Algorithm:
  - Convert input string to an array of words
  - Select the second to last word in the array and return it
=end

def penultimate(sentence)
  sentence.split[-2]
end

puts "---penultimate word---"
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

=begin
# Further Exploration:
- Write a method that returns the middle word of a phrase or sentence.
- It should handle all edge cases:
  - empty string
  - string containing one word 
  - odd number of words in phrase?
  - even number of words in phrase?

# Problem:
- Input: string
  - containing a phrase or sentence
  - may be an empty string
  - may contain only one word
- Output: a string, the middle word from the input
  - if input is an empty string, return an empty string
  - if input contains only one word, return that word
  - if the sentence has an even number of words, return the middle 2 words

# Examples:
Input: 'why hello there'
Output: 'hello'
  - ['why', 'hello', 'there'] => 0, 1, 2 => 3 / 2 = 1 array[1] => 'hello'

Input: 'why hello there friend'
Output: 'hello there'
  - ['why', 'hello', 'there', 'friend'] => 0, 1, 2, 3 => 4 / 2 = 2
  - array[2] => 'there'
  - array[half - 1] + array[half] => 'hello there'

# Algorithm:
  - Initialize an empty result string
  - Split the sentence into an array of words
  - Get the halfway index of the array
  - If the array length is odd, append the word at halfway index to the result
  - If the array length is even
    - append word at halfway -1 to the result
    - append a space
    - append the word at halfway to the result
  - Return the result
=end

def middle_of_phrase(sentence)
  middle = ""
  return middle if sentence.empty?
  
  words = sentence.split
  halfway = words.size / 2

  if words.size.odd?
    middle << words[halfway]
  else
    middle << (words[halfway - 1] + ' ' + words[halfway])
  end

  middle
end

puts "---middle of phrase---"
p middle_of_phrase("hello") == "hello"
p middle_of_phrase("why hello") == "why hello"
p middle_of_phrase("why hello there") == "hello"
p middle_of_phrase("why hello there friend") == "hello there"
p middle_of_phrase("") == ""
