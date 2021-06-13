=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b 
is in position 2. In the alphabet, a and b are also in positions 1 and 2. 
Notice also that d and e in abode occupy the positions they would occupy in the alphabet,
which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy 
their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

PROBLEM
- Input: Array
- Output: Array

rules:
    - Explicit rules
      - Write a method, that given an array of words, returns an array of the number
        of letters that occupy their positions in the alphabet
      - alphabet chars, both uppercase and lowecase. No spaces
  
DATA STRUCTURE
- Hash
- Strings

ALGORITHM
- Build a collection in which we have the alphabet letters with their corresponding
  positions
- Iterate through given array and check if every character is in the same position
  that the collection associates with it

PSEUDOCODE
- Create a collection

- 

=end

def solve(arr)
  alphabet_lowercase = ('a'..'z').to_a
  alphabet_uppercase = ('A'..'Z').to_a
  positions = (1..26).to_a
  
  upper = alphabet_lowercase.zip(positions).to_h
  lower = alphabet_uppercase.zip(positions).to_h
  
  alphabet_positions = upper.merge(lower)
  
  counter = 0
  final_array = []
  
  loop do
    
    final_count = arr[counter].chars.map.with_index do |letter, index|
      if alphabet_positions[letter] == index + 1
        1
      else
        0
      end
    end
    final_array << final_count.reduce(:+)

    
    break if counter >= arr.size - 1
    counter += 1
  end
  final_array
end

p solve(["abode","ABc","xyzD"]) == [4, 3, 1]