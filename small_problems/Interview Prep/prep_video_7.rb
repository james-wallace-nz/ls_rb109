# Write function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise return false

# For example,
# str1 is 'rkqodlw', and str2 is 'world' the output should return true
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true
# str1 is 'katas' and str2 is 'steak' should return false

# Only lower case letters will be used (a-z). No punctuation or digits will be included

=begin
PROBLEM
Can a substring from str1 be rearranged to match str2

Input: two strings
Output: boolean true/false

Rules:
- lowercase a-z only
- no punctuation or letters

Implicit:
- substring is 2 or more characters


EXAMPLES



DATA STRUCTURES

Strings
Array


ALGORITHM
High-Level:
- iterate through all substrings in str1 and compare the substring to str2


or:
- split both strings into character arrays and see if str1 includes all characters from str2
- iterating through str2 and deleting the first matching character in str1
- if no matching character to delete then return false

- replace char with '' or
- count in both strings and if str1 has more than or equal to chars then ok


CODE
=end

def scramble(str1, str2)
  str1_chars = str1.chars
  str2_chars = str2.chars

  str2_chars.all? do |char|
    str1_chars.count(char) >= str2_chars.count(char)
  end
end

def scramble(str1, str2)
  str2.chars.each do |char|
    new_string = str1.sub!(char, '')

    return false if new_string.nil?
  end
  true
end

p scramble('javaass', 'jjss')               == false
p scramble('rkqodlw', 'world')              == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak')                == false
p scramble('scriptjava', 'javascript')      == true
p scramble('scriptingjava', 'javascript')   == true
