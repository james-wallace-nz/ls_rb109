# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Input: two strings of different lenths
# outputs: shorter string + longest string + shorter string

# algorithim:
# - determine argument lengths and assign to shorter and longer variables
# - concatenate shorter + longer + shorter

def short_long_short(one, two)
  if one.length < two.length
    shorter, longer = one, two
  else
    shorter, longer = two, one
  end

  shorter + longer + shorter
end

# Examples:
puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
