# Given 2 strings, your job is to find out if there is a substring that appears in both strings.
# You will return true if you find a subtring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

=begin
PROBLEM
Return boolean based on substring appearing in both string inputs

Input: two Strings
Output: boolean true/false

Rules:
- substring must be 2 or more characters
- characters are uppercase or lowercase letters and numbers
- return false if either is an empty string or 1 character in length

Implicit:
- comparison of substrings is case insensitve
- only need to compare substrings of 2 characters

Questions?
- no punctuation?


EXAMPLES



DATA STRUCTURES

Strings
Array
Range


ALGORITHM
High-Level:
- return false if either string input is less than or equal to 1 character

- find shortest string from inputs and assign to `shortest` variable, assign other to `longest`

- iterate through substrings in `shortest` string:
  - iterate through each index in the range from index 1 to `shortest` length
    - assign the character sequence from index 0 to current index to `sequence` variable
    - if longest includes `sequence` then return `true`

- otherwise return `false`

CODE
=end

def substring_test(word_one, word_two)
  return false if word_one.length <= 1 || word_two.length <= 1

  if word_one <= word_two
    shortest = word_one
    longest = word_two
  else
    shortest = word_two
    longest = word_one
  end

  (1...shortest.length).each do |stop_index|
    shortest_sequence = shortest[(stop_index - 1)..stop_index].downcase

    (1...longest.length).each do |last_index|
      longest_sequence = longest[(last_index - 1)..last_index].downcase
      return true if shortest_sequence == longest_sequence
    end
  end

  false
end

p substring_test('Something', 'Fun') == false    # nil
p substring_test('Something', 'Home') == true    # ome
p substring_test('Something', '') == false       # nil
p substring_test('', 'Something') == false       # nil
p substring_test('BANANA', 'banana') == true     # ba
p substring_test('test', 'lllt') == false        # nil
p substring_test('', '') == false                # nil
p substring_test('1234567', '541265') == true    # 12
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true  #oc
