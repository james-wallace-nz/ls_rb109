=begin
# Problem:
  - Input: a string
    - may be an empty string
    - words constitute any substring of non-space characters
    - words are separated by exactly one space
  - Output: an array
    - each element is a word from the input string + ' ' and the length of the word (a number)
    - an empty string returns an empty array

# Examples
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
  - cow = 3 chars, sheep = 5 chars, chicken = 7 chars

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
  - ain't = 5, it? = 3, include punctuation in character count

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
  - one word string returns one element array

word_lengths("") == []
  - empty string returns empty array
  
# Algorithm:
- Split the string up into an array of words
- Iterate over the array, transform each element
  - add ' ' + the characters count
- Return the resulting transformed array
=end

def word_lengths(string)
  string.split.map { |word| word + " #{word.size}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
