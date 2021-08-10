# interview level of code  questions?
# level 6 kyu hard to trust, because sometimes it's too hard
# or too easy
# try to do level 6 or level 5 kyu

# interview doesn't do optimizing code for speed or real world problems
# should feel confident going into the interview
# practice in interview conditions

# block is code right after a method invocation

# loop is a method invocation
# while is a key word --> KNOW THE DIFFERENCE
# |var| is a block parameter
# local variables initialized in outer scope are not available
# in method definitions

# say block scope vs. inner scope of method definition
# in the interview, read the error message, explain what happened
# and THEN fix it

# variable shadowing doesn't happen with method definition
# because method def can't access in outer scope anyhow (only
# if something is passed in as a parameter)

# aim to solve each problem in about 20 minutes (interview)

# repl is allowed on the right side of the coderpad during the interview
# test small lines of code and method syntax often

#NOTE Given practice problem
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


# input: string
# output: new string: one letter: first unrepeated letter
# --> if all letters are repeated, or empty string, return empty

#My solution::
def first_non_repeating_letter(str)
  str.chars.select {|l| l if str.downcase.chars.count(l.downcase) == 1}[0]
end

# Finished solution together::
# def first_non_repeating_letter(str)
#   str.chars.each do |c|
#     return c if str.downcase.count(c.downcase) == 1
#   end
# end


p first_non_repeating_letter('stress')
p first_non_repeating_letter('sTtrEsS')
