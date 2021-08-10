=begin

- Input: 2 arguments (string1, string2)
- Output: String

rules
    - Explicit rules
      - Write a method that takes two strings as arguments and:
        - Determines the longest of the two strings and then:
          - Returns the result of concatenating the shorter string, the
            longer string, and the shorter string again
        - Assume strings are different lengths

DATA STRUCTURE
- Strings

ALGORITHM
- Determine which string argument is the longest
  - If first string argument is the longest:
    - Concatenate string2 + string1 + string2
  - Else:
    - Concatenate string1 + string2 + string1
  

=end

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end


p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"