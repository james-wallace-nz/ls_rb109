=begin
# Problem:
  - Input: a string
  - Output: an array of all substrings from the input that are palindromes
    - a palindrome has the same sequence of characters forwards and backwards
    - order the array in the same sequence as substrings appear in the input string
    - duplicate palindroms should be included as many times as they appear
    - palindromes are case sensitive: 'AbA' is a palindrome but 'Aba' is not
    - consider all characters: 'aba' is a palindrome but 'a-ba' is not
    - a palindrome must consist of at least two characters

# Examples
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
  ['ma', 'mad', 'mada', 'madam', 'ad', 'ada', 'adam', 'da', 'dam', 'am']
  [str[0, 2], str[0, 3], str[0, 4], str[0, 5],
   str[1, 2], str[1, 3], str[1, 4],
   str[2, 2], str[2, 3],
   str[3, 2] ]
  [ leading_substrings(string[0..-1])
    leading_substrings(string[1..-1])
    leading_substrings(string[2..-1])
    leading_substrings(string[3..-1]) ]
  input string size = 5
  go up to 3, aka input string size -2
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Algorithm:
1. Create a list of all substrings (of at least 2 chars) from the input string
2. Iterate over the substrings
  - select those substrings that are palindromes
3. Return the result

- Get all the substrings
  - Initialize a sub-strings array
  - Create a loop that tracks beginning index starting at 0 and going up to input string size - 2
    - Get all the leading substrings from the part of the word starting at the current index
    - Add them to the substrings array
  - Return the sub-strings array

- Get all the leading substrings
  - Initialize a sub-strings array
  - Create a loop that tracks length beginning at 2 going up the size of the input string
    - extract the section of the input string with the current length
    - Add it to the sub-strings array
  - Return the sub-strings array

- Check to see if the substring is a palindrome
  - Is the same forwards and backwards? (case sensitive)
=end

def leading_substrings(string)
  substrings = []
  2.upto(string.size) { |length| substrings << string[0, length] }
  substrings
end

def all_substrings(string)
  substrings = []
  (0..string.size - 2).to_a.each do |index|
    substrings += leading_substrings(string[index..-1])
  end
  substrings
end

def palindrome?(string)
  string == string.reverse
end

def palindromes(string)
  all_substrings(string).select { |substring| palindrome?(substring) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
