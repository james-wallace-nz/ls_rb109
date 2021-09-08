# You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# If no bigger number can be composed using those digits, return -1

# 9 => -1
# 111 => -1
# 531 => -1

=begin
PROBLEM
Rearrange the digits in the argument to create a larger integer

Input: positive integer
Output: an integer, positive or -1


EXAMPLES
12 can be rearranged to 21
513 can be rearanged to 135, 153, 315, 351, 513, 531
9 cannot be rearranged


DATA STRUCTURES

Integers
Strings
Array


ALGORITHM
- initialize `digits` and assign integer converted to digits with `to_s` method and converted to array with `chars` method
- initialize `permutations` array variable and assign the return value of `permutation` method called on `digits`
- join string elements in `permutation` sub-arrays then convert to integers

- sort the `permutation` array smallest to largest
- find index of `int`
- find next largest element `index` + 1
- if `nil` return `-1`


CODE
=end


def next_bigger_num(int)
  digits = int.to_s.chars
  permutations = digits.permutation.to_a
  permutations = permutations.map { |digits| digits.join.to_i }
  permutations.sort!
  int_index = permutations.index(int)
  unless permutations[int_index + 1] == int || permutations[int_index + 1].nil?
    permutations[int_index + 1]
  else
    -1
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
