=begin
Implement a method that calculates the sum of the integers inside a string. E.g. "L12aun3ch Sch3oo45l"

Note: only positive integers will be tested.

# PROBLEM
- input: string with letters and numbers
- output: integer
- boundaries: all integers will be positive
- "12" -> is that 12 or 1 + 2?
- calculate the sum of the integers in the input string
- "L12aun3ch Sch3oo45l" -> example input
- create a method

# EXAMPLES
p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("HELLO WORLD77!") == 77

0 -> zero
O -> oh
1 -> one
l -> llama
- consecutive digits are considered one integer: "12" is 12
- output: integer
- if no integers in string, return 0
- we only have to deal with alphanumeric characters AND spaces and exclamation points

DATA STRUCTURES
- strings (splitting them later?)
- integers
  - setting the default return as 0
- array (parsing the string, split and join strings later on)
- range (to find valid numbers)

ALGORITHM
Aryan

GIVEN a String including alphanumeric characters AND spaces and exclamation points
  - Split string into array where every character is contained in individual block
  - create an Integer which counts the total of the sum of the integers called total

Create a loop which goes through each element of the array
  - if element is not numeric
    - go to NEXT iteration of loop
  - if element is numeric:
    - create a subloop which checks how many subsequent elements are numeric and concatenates these together into one integer
    - add integer to total



-----------------------------------------------------
Luke

ALGORITHM
- Given an input string `str`
- Initialize an empty array `arr`
- Initialize a variable `int` as an empty string
- Loop through all characters of `str` where each charater is `char`
  - Skip if `char` is not an integer
  - If `char` is an integer, append `char` to `int`
  - Append integer to `arr` when you meet another non-integer
  - Set `int` to an empty string again
- Sum all integers in `arr`
- Return sum

-----------------------------------------------------
George

start

get string set to 'mixed'

split 'mixed' and set to an array

read value of 'mixed' array

return integers from array and set to


-----------------------------------------------------
James

set 'integers' variable equal to range 0 to 9
set 'digits' variable equal to empty array

create a 'counter' variable equal to the length of input string

call 'loop' method using counter and input string as arguments

'loop' method:
create a loop that runs until 'counter' equals length of string argument
set 'char' variable equal to empty string
iterate through characters in the string using counter as index
if character converted to integer is within the range variable
  add to 'char' string variable
  increment counter by 1 and loop again
otherwise
  increment counter by 1 and outer loop again

create 'sum' variable
iterate through 'digits' array
convert element strings to ingteers
increment 'sum'

-----------------------------------------------------
Andy

define method name = ask if tester has a preference. take one parameter = (string)
take string input and split up into two arrays.
  array one has all the non numeric numbers (HELLO WORLD)
  array two has integers as their own index.(2, 3, 1, 5)
    if consecutive digit, part of same integer. (ex. 77)
  add up the integers in the array.
  if 2nd array is empty, output is 0
  return the output as an integer.
end method


-----------------------------------------------------
Callie

- accept a str as argument
- create a sum and set it to 0
- create an empty string for the current number
- break the string apart and look at each character
  - if the character is a number
    - add it to the end of the current number
  - if the character is not a number
    - add the current number to sum
    - reset current number
- return the sum
=end


def sum_of_integers(string)
  sum = 0
  current_number = ''
  string.chars.each do |char|
    if ('0'..'9').include?(char)
      current_number += char
    else
      sum += current_number.to_i
      current_number = ''
    end
  end
  sum += current_number.to_i
end


p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("HELLO WORLD77!") == 77
p sum_of_integers("HELLO WORLD77") == 77