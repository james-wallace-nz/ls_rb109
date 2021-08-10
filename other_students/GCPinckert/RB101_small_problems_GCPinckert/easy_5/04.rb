# Given a string of words separated by spaces
# Return a string in which the 1st and last letters of every word are swapped
# Every word will contain at least one letter
# The string will always contain at least one word
# The string will contain nothing but words and spaces

# Preserve character case

# Split string up into an array of words
# Iterate through each word in the array
  # Create a copy of the current word
  # Assign the first char of the copy to the last char of the original
  # Assign the last char of the copy to the first char of the original
  # Return the copy
# Join the array into a string with a ' ' as a delimiter
# Return the string

def swap(string)
  words = string.split
  swapped_words = words.map do |word|
                    swapped = word.dup
                    swapped[0] = word[-1]
                    swapped[-1] = word[0]
                    swapped
                  end

  swapped_words.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
