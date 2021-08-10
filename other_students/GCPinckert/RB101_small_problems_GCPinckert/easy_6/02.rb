=begin
# Problem:
- Input: an array of strings
  - Containing both upper and lowercase letters
  - Only alphabetical characters
- Output: an array of strings
  - elements are same string values
  - all vowels have been removed
  - vowels are case insensitive
  - 'y' is not considered a vowel

# Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Algorithm:
- Create an constant, an array of all vowel chars
- Iterate over the input array
  - For each string, convert to an array of chars
  - Initialize an empty string
  - Iterate over the array of chars
    - Add the char to the empty string if it is not included in the vowels array
  - Make the new string with no vowels the return value of the block
  - Return the transformed input array
=end

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(strings)
  strings.map do |string|
    no_vowels = ''
    string.chars.each { |char| no_vowels << char unless VOWELS.include?(char) }
    no_vowels
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
