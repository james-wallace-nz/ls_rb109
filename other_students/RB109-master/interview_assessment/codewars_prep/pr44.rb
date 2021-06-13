=begin

PROBLEM
- Input: String
- Output: Integer

rules
    - Explicit rules
      - Write a method that will return the count of distinct case insensitive
        alphabetic characters

DATA STRUCTURE
- Arrays
- String

ALGORITHM
- Iterate through the alphabet
  - Obtain the count of each letter in the alphabet within
    the input string (downcased)
    - If the counter is > 1, push letter to a collection

- Delete duplicates from collection and return size of collection
=end

def duplicate_count(string)
  duplicate_letters = []
  
  ('a'..'z').each do |current_letter|
    current_count = string.downcase.count(current_letter)
    duplicate_letters << current_letter if current_count > 1
  end
  
  duplicate_letters.size
end

p duplicate_count("") #== 0
p duplicate_count("abcde") #== 0
p duplicate_count("abcdeaa") #== 1
p duplicate_count("abcdeaB") #== 2
p duplicate_count("Indivisibilities") #== 2
