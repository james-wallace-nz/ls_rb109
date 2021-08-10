# Return a new string with the words of the argument in reverse order
# Do not use any built-in reverse methods
# Fix the code so no errors are raised

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

=begin
Here, on line 11, we try to concatenate a string with an array, which are
incompatible data types. By turning words[i] into an array with a single element
the operation can be executed as performed, and we see the expected output.
=end
