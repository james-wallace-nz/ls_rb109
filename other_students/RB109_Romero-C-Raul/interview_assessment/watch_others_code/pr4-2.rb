=begin

PROBLEM
- Input: 2 arguments (string1, string2)
- Output: Boolean

rules
    - Explicit rules
      - Write a method that returns true if a portion of str1 characters can be re
        arranged to match str2
      - Only lowecase letters will be used, no punctuation or digits
    - Implicit rules
      - 

problem domain
- You need same letters in the same amount to re_arrange a portion on str1 to equal
  str2

ALGORITHM
- Remove any letters from the first string that are no present in the second string
- Obtain the count of the shared letters in the first string
  - Compare the count with the letters in the second string
    - String1 count should be greater or equal than the one in string2
      to return true

PSEUDOCODE
- Accept two strings (string1, string2)
- Split string1 by characters and assign to variable (string1_chars)
- Split string2 by characters and assign to variable (string2_chars)

- Iterate through string2_chars.uniq
  - Obtain the count of that character in string2_chars
  - Obtain the count of that character in string1_chars
    - Return false unless string1_chars count >= string2_chars count
  
  return true

=end

def scramble(string1, string2)
  string1_chars = string1.chars
  string2_chars = string2.chars
  
  string2_chars.uniq.each do |current_letter|
    string2_count = string2_chars.count(current_letter)
    string1_count = string1_chars.count(current_letter)
    return false unless string1_count >= string2_count
  end
  
  true
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
