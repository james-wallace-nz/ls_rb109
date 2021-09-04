# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# input: string
# output: string with words of >=5 characters reversed

# algorithm:
# - split string into words by space and assign to `words` variable
# - iterate through words
  # - if word length is greater or equal to 5 then
  #   - reverse it
  #   - add reversed word to `new_words` array
  # - otherwise
  # - add word to `new_words` array
# - join `reversed_words` with spaces and return

def reverse_words(string)
  words = string.split
  new_words = []
  words.each do |word|
    if word.length >= 5
      new_words << word.reverse
    else
      new_words << word
    end
  end
  new_words.join(' ')
end

# Examples:
puts reverse_words('Professional')          == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School')         == 'hcnuaL loohcS'
