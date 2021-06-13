=begin

PROBLEM
- Input: String
- Ouput: string

rules
    - Explicit rules
      - Write a method that find the longest alphabetical substring
      - Ex. "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt"

DATA STRUCTURE
- String
- Arrays

ALGORITHM
- Obtain all substrings within given string
  - Go through substrings and determine if they are in alphabetical order
    - If it is, add to a collection

- Return the longest substring in the collection

SUB-PROCESS -> Determine if string is in alphabetical order
- Create an alphabet range or collection
- Split string by characters and delete duplicates
  - Obtain index value of current letter within alphabet
  - Obtain index value of next letter within alphabet
  - Return false if current letter index > next letter index
  
  - Return true at end of iteration
=end

def obtain_substrings(string)
  substrings = []
  
  0.upto(string.size - 1) do |index|
    1.upto(string.size - index) do |length|
      substrings << string[index, length]
    end
  end
  
  substrings
end

def alphabetical_order(string)
  alphabet = ('a'..'z').to_a
  unique_chars = string.squeeze.chars
  
  unique_chars.each_with_index do |letter, index|
    break if index >= unique_chars.size - 1
    next_letter = unique_chars[index + 1]
    
    current_letter_index = alphabet.index(letter)
    next_letter_index = alphabet.index(next_letter)
    return false if current_letter_index > next_letter_index
  end
  
  true
end

def longest(string)
  substrings = obtain_substrings(string)
  alphabetical_substrings = []
  
  substrings.each do |current_substring|
    alphabetical_substrings << current_substring if alphabetical_order(current_substring)
  end
  
  alphabetical_substrings.max_by { |substring| substring.size }
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
