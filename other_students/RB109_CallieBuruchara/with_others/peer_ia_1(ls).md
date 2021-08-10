#First (E)
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which
every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.

#Test Cases 
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


#Second (E)
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

#Test Cases
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


#Third (H)
A featured number (something unique to this exercise) is an odd number that is a
multiple of 7, and whose digits occur exactly once each. So, for example, 49 is
a featured number, but 98 is not (it is not odd), 97 is not (it is not a
multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Issue an error message if
there is no next featured number.

#Test Cases
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements





# https://launchschool.com/exercises/f149de8d
# https://launchschool.com/exercises/4a28f116
# https://launchschool.com/exercises/f3d7f26e

#Third (H)
# A featured number (something unique to this exercise) is an odd number that is a
# multiple of 7, and whose digits occur exactly once each. So, for example, 49 is
# a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next
# featured number that is greater than the argument. Issue an error message if
# there is no next featured number.

# Pseudo 
# - Definition Featured number: odd, multiple of 7 and each digits only once
# - Input int, output next bigger featured number or error 

# - loop starting at integer
# - do the 3 checks
# - if they all return true then return current number 
# - if not all true --> next 
# - if num of digits is 11 break and return error 

def featured




#Test Cases
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
