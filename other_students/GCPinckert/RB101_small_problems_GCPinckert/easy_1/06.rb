=begin
- Write a method that takes one argument: a string with one or more words
- Returns the given string with words that have 5(+) chars reversed
- Each string will consist of only letters and spaces
- Spaces should be included only when more than one word is present

Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

- Input = string, only letters and spaces allowed
- Output = string, no extra spaces allowed

- Create a new array of each word in the given string
- Iterate through array, for each element
  - If the length >= 5:
    - Reverse characters in the element
  - Otherwise:
    - Go to next element
- Join the elements in the array
=end

def reverse_words(string)
  string.split.map! { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional') == "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School') == "hcnuaL loohcS"
