=begin
# Problem:
- Input: a string
  - may contain one or more words
  - may contain alphanumeric and other characters
- Output: a new string
  - containing the original value using staggard capitalization
  - every other character is capitalized
  - remaining characters are lowercase
  - characters that are not letters should not be changed, and do not count when switching case
    - i.e. 'ab cd' => 'Ab Cd'

# Examples:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Algorithm:
- Initialize uppercase variable to true
- Convert input string to array of chars
- Initialize result as empty string
- Iterate over the array of chars, for each char
  - If it is alphabetical:
    - If uppercase is true, add uppercase char to result string
    - If uppercase is false, add lowercase char to result string
    - Switch uppercase to opposite boolean
  - If it is not alphabetical:
    - Add the char to the result string
- Return the result string
=end

def staggered_case(string)
  result = ''
  uppercase = true
  
  string.chars.each do |char|
    if ('A'..'Z').include?(char) || ('a'..'z').include?(char)
      uppercase ? result << char.upcase : result << char.downcase
      uppercase = !uppercase
    else
      result << char
    end
  end
  
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

=begin
# Further Exploration:
  - Modify the method such that you can choose whether non-alphabetic characters
    should be counted when determining upper/lowercase
=end

def staggered_case2(string, count_other_chars = false)
  result = ''
  uppercase = true
  
  string.chars.each do |char|
    if (('A'..'Z').include?(char) || ('a'..'z').include?(char)) || count_other_chars
      uppercase ? result << char.upcase : result << char.downcase
      uppercase = !uppercase
    else
      result << char
    end
  end
  
  result
end

# counting non-alphabetical characters set to false
p staggered_case2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case2('ALL CAPS', false) == 'AlL cApS'
p staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# counting non-alphabetical characters set to true
p staggered_case2('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
