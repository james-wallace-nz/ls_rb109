=begin

PROBLEM
- Input: String
- Output: Hash

rules
  - Explicit rules
    - Write a method that takes a string with one or more space separated
      words and returns a hash that shows the number of words of different
      sizes

DATA STRUCTURE
- Array
- String
- Hash

ALGORITHM
- Go through each word in the string
  - Obtain the letter count of the current word
  - Increase the count of that letter count by 1 every time
    it is encountered

=end

def word_sizes(string)
  word_counter = Hash.new(0)
  
  string.split.each do |current_word|
    word_counter[current_word.size] += 1
  end
  
  word_counter
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}