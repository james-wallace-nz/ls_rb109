=begin
Input: a string
Output: boolean
  - return `true` if all the alphabetic chars are uppercase
  - `false` otherwise
  - Ignore any characters that are not alphabetic
  - An empty string returns `true`

Examples:
uppercase?('t') == false            # t is lowercase, false
uppercase?('T') == true             # T is uppercase, true
uppercase?('Four Score') == false   # some letters are lowercase, false
uppercase?('FOUR SCORE') == true    # all letters are uppercase, true, ignore whitespace
uppercase?('4SCORE!') == true       # all letters are uppercase, true, ignore nums and punctuation
uppercase?('') == true              # empty string returns true


Algorithm:
  - Check to see if the input string is equal to the same string
    with all letters uppercased
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
