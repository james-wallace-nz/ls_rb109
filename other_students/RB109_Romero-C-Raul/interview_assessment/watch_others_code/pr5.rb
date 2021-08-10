=begin

PROBLEM
- Input: String
- Output: Integer

rules
    - Explicit rules
      - Write a method that finds the length of the longest substring in the
        given string that is the same in reverse
      - If the length of the input string is 0, return value must be 0
    - Implicit rules
      - Single letters count as substrings
      - We are obtaining ALL substrings

DATA STRUCTURES
- Strings
- Arrays

ALGORITHM
- Obtain all substrings from given string
- Iterate through each substring
  - Check if the substring reversed is the same as the original substring
    - If it is, add it to a collection
    - If it is not, ignore it

SUB-PROCESS (obtain_substrings)
- Iterate through each index of the given string (string.size - 1)
  - Iterate through each possible length of substring (string.size - current_index)
    - Slice through string using index, length of substring and push
      to a collection
- Return collection

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

def longest_palindrome(string)
  return 0 if string.empty?
  all_substrings = obtain_substrings(string)
  
  reverse_substrings_count = all_substrings.map do |current_substring|
    if current_substring == current_substring.reverse
      current_substring.size
    else
      0
    end
  end
  
  reverse_substrings_count.max
end
  


puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7
