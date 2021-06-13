=begin

PROBLEM
- Input: 2 arguments (string1, string2)
- Output: boolean

rules
    - Explicit rules
      - Given 2 strings, find if there is a substring that appears in both strings
      - Return true if you find the substring, false if not
      - We one care about substrings with size > 1
    - Implicit rules
      - Either argument1 or argument 2 are ' ', return false
      - Words are case insensitive

DATA STRUCTURES
- Strings 
- Arrays

ALGORITHM
- Obtain all the substrings (greater that size 1) from the first and second strings
- Compare strings, and check which substrings they share 

SUB-PROCESS (obtain_substrings)
- Iterate through the indexes of the string (except last one)
  - Iterate through the different lengths of substring (greater than 1)
    - Slice through string using index and length and push to a collection
- Return the collection

=end

def obtain_substrings(string)
  substrings = []
  
  0.upto(string.size - 1) do |index|
    2.upto(string.size - index) do |length|
      substrings << string[index, length]
    end
  end
  
  substrings
end


def substring_test(string1, string2)
  string1_substrings = obtain_substrings(string1.downcase)
  string2_substrings = obtain_substrings(string2.downcase)
  
  (string1_substrings & string2_substrings).size >= 1
end
  
  

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true
