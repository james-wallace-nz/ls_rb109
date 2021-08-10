=begin
Problem:
- Read the content of a text file
- Print the longest sentence in the file
  - Longest = the highest number of words in the sentence
  - Sentences end with '.', '!', or '?'
  - A word is any sequence of chars that are not spaces or sentence-ending
    - Including things like '--'
- Print the number of words in the longest sentence

Algorithm:
- Initialize an empty array sentences
- Initialize a hash : { sentence: '', word_count: 0 }
- Read the content of a text file char by char
- Generate the current sentence
  - Add a single char to :sentence until we reach a '.', '!', or '?'
- Count the words in the current sentence
  - Split the sentence up into an array of words
  - Count all the words in the array
- If the word count of the current sentence > hash[:word_count]
  - Add the sentence as the value of hash[:sentence]
  - Add the word count as the value of hash[:word_count]
- Output the final values of hash[:sentence] and hash[:word_count]
=end

def display_longest_sentence(file)
  sentences = []
  sentence = ''

  open(file).each_char do |char|
    sentence << char
    if char == '.' || char == '!' || char == '?'
      current_sentence = {}
      current_sentence[:sentence] = sentence
      current_sentence[:word_count] = sentence.split.count
      sentences << current_sentence
      sentence = ''
    end
  end

  longest_sentence = sentences.max_by { |hash| hash[:word_count] }
  puts longest_sentence[:sentence]
  puts longest_sentence[:word_count]
end

display_longest_sentence("text.txt")
puts "\n\n\n"
display_longest_sentence("Frankenstein.txt")