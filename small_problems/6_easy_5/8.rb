# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

=begin
PROBLEM
Sort an array of integers based on their English name

Input: array of integers with values 0-19
Output: new array of those integers sorted based on English name for that integer

DATA STRUCTURES

Integers
Strings
Array


ALGORITHM
- sort the array argument based on English string name
- sort_by passing in a block
  - in the blcok we reference the English name for the current integer element


CODE
=end

ENGLISH = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by do |integer|
    ENGLISH[integer]
  end
end

def alphabetic_number_sort(numbers)
  numbers.sort do |a, b|
    ENGLISH[a] <=> ENGLISH[b]
  end
end

# Examples:
puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
