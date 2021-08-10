=begin

PROBLEM
- Input: String
- Output: String

rules:
    - Explicit rules
      - Write a method that takes in a string of one or more words, and
        - Returns the same string, but with all five or more letter
          words reversed
      - Spaces will be included only when more that one word is present

DATA STRUCTURE
- Arrays
- Strings

ALGORITHM
- Go through each word
  - Reverse word IF it is made up of 5 or more letters

=end

def spinWords(string)
  string.split(" ").map do |word| 
    word.size >= 5 ? word.reverse : word
  end.join(" ")
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
p spinWords('test') == 'test'
