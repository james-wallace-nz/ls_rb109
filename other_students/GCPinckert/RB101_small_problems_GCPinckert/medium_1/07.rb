=begin
# Problem:
  - Input: a sentence string
  - Output: the same string, with any "number words" converted to a string of digits
    - Number words = 'zero', 'one', 'two', 'three', 'four', 'five', 
                     'six', 'seven', 'eight', 'nine'
    - Each single digit string can be delimited by spaces
    - If the number word contained punctuation, it should remain in place
      (i.e. four. => 4.)

# Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') 
== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Algorithm:
- Initialize an array of number words for each corresponding index
- Iterate over the array of number words, with index
  - substitute each part of the input string that matches the current number 
    word with the corresponding index
- Return the resulting string
=end

NUMBER_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  NUMBER_WORDS.each_with_index do |num_word, index|
    sentence.gsub!(num_word, index.to_s)
  end
  
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == \
                'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin
# Further Exploration:
- Change the solution so spaces between consecutive numbers are removed.
- Leave any spaces that are already in the input string for numbers (not words)
- Can you format the result to account for phone numbers, using the format:
  (123) 456-7890
=end