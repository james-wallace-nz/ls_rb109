# Input: string
# Return: new string containing the orig value
  # First character of every word should be capitalized
  # All other letters should be lower case
# Words are any sequence of non-blank characters

# Examples
  # word_cap('four score and seven') == 'Four Score And Seven'
  # word_cap('the javaScript language') == 'The Javascript Language'
  # word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Turn the string into an array of words
# Iterate through the array, for each word
  # Capitalize the first letter in the original word
# Join the array into a string with a ' ' delimiter
# Return the string

def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration:
# Without using the .capitalize method

# Turn the string into an array of words
# Iterate through the array, for each word
  # Turn the element at index 0 of the word to uppercase
# Join the array into a string with a ' ' delimiter
# Return the string

def word_cap2(string)
  string.split.map do |word| 
    word[0] = word[0].upcase
    word[1..-1] = word[1..-1].downcase
    word
  end.join(' ')
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'

# Option 2

# Turn the string into an array of words
# Iterate through the array, for each word
  # Turn the word into an array of chars
  # Iterate through the array, for each char
    # If index = 0
      # Make char uppercase
    # Else
      # Make char lowercase
  # Join the array of chars back into string word
# Join the array of words back into string 
# Return the string

def word_cap3(string)
  string.split.map do |word|
    counter = -1
    word.chars.map do |char|
      counter += 1
      if counter == 0
        char.upcase
      else
        char.downcase
      end
    end.join
  end.join(' ')
end

p word_cap3('four score and seven') == 'Four Score And Seven'
p word_cap3('the javaScript language') == 'The Javascript Language'
p word_cap3('this is a "quoted" word') == 'This Is A "quoted" Word'
