=begin

PROBLEM
  - Input: String
  - Output: integer
  
rules
  - Explicit rules
    - Write a method that given a string of integers, returns:
      - The number of odd-numbered substrings that can be formed

DATA STRUCTURE
- Arrays
- Strings
- Integers

ALGORITHM
- Obtain all substrings from the given input string (helper)
- Iterate through all those substrings, convert them into integers
  and check if they are odd, and if they are, add them to an array
  
- Return size of array
  
=end

def all_substrings(string)
  substrings = []
  
  0.upto(string.size) do |index|
    1.upto(string.size - index) do |length|
      substrings << string[index, length]
    end
  end
  
  substrings
end

def solve(string)
  p substrings = all_substrings(string)
  odd_substrings = []
  
  substrings.each do |current_substring|
    odd_substrings << current_substring if current_substring.to_i.odd?
  end
  
  odd_substrings.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
