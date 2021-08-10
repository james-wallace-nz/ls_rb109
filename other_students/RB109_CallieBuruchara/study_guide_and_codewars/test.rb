# Write a method that takes a string input, and returns the first character that is not repeated anywhere in the string.
#
# For example, if given the input 'stress', the method should return 't', since the letter t only occurs once in the string, and occurs first in the string.
#
# Upper- and lowercase letters are considered the same character, but the method should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.
#
# If a string contains all repeating characters, it should return an empty string ("")

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('sTreSS') == 'T'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('aabbcc') == ''
p first_non_repeating_letter('') == ''



# Given the string of chars a..z A..Z do as in the sample cases

p accum("abcd")    # "A-Bb-Ccc-Dddd"
p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    # "C-Ww-Aaa-Tttt"




# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.


p substring_test('Something', 'Fun') ==  false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true






# A featured number (something unique to this exercise) is an odd number that is a
# multiple of 7, and whose digits occur exactly once each. So, for example, 49 is
# a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next
# featured number that is greater than the argument. Issue an error message if
# there is no next featured number.

#Test Cases
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements