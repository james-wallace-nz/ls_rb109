# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# input: string
# output: string with words in reverse order
# words are separated by spaces

# algorithm:
# - split string into words by space and assign to `words` variable
# - count down from `words` size - 1 to 0
#    - assign each word to `reversed_words` array variable
# - join `reversed_words` with spaces and return

def reverse_sentence(string)
  words = string.split
  reversed_words = []
  (words.size - 1).downto(0) do |index|
    reversed_words << words[index]
  end
  reversed_words.join(' ')
end

# Examples:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# The tests above should print true.
