# Write a program that:
  # Asks a user for an input of 1+ word
  # Gives back the number of characters
  # Do not count spaces as characters
  # Punctuation does count as a character (see examples)

# Examples:
  # input: Please write word or multiple words: walk
  # output: There are 4 characters in "walk".

  # input: Please write word or multiple words: walk, don't run
  # output: There are 13 characters in "walk, don't run".

# Algorithm:
  # Get user input (string of 1 or more words)
  # Split string into array of characters
  # Remove any spaces
  # Count total number of elements in the array
  # Display results

print "Please write word or multiple words: "
message = gets.chomp

characters = message.chars
num_chars = characters.count { |char| char != ' ' }

puts "There are #{num_chars} characters in \"#{message}\"."

# Option 2: Split into array of words and iterate
=begin
# Algorithm
- Prompt the user for a string
- Get the amount of characters in the string
  - Split the string up into an array of words
  - Initialize a characters variable to 0
  - Iterate over the array of words
    - Get the number of characters in each word
    - Add it to the characters variable
  - Return the total number of characters
- Display the results for the user
=end

def calc_characters(string)
  words = string.split
  chars = 0
  words.each { |word| chars += word.size }
  chars
end

print "Please write word or multiple words: "
words = gets.chomp

total_chars = calc_characters(words)
puts "There are #{total_chars} characters in \"#{words}\"."
