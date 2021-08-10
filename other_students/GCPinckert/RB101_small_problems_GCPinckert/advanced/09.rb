=begin
# Problem:
RATIONAL NUMBER: represented as the result of the division of two integers
  - 1/3, 3/2, 22/7, etc
  - NUMERATOR / DENOMINATOR
UNIT FRACTION: rational number where the numerator is 1
  - 1/3, 1/2, 1/32, etc
EGYPTIAN FRACTION: sum of a series of distinct unit fractions (no two are the same)
  1   1    1    1
  - + - + -- + --
  2   3   13   15
- Every positive rational number can be written as an Egyptian Fraction:
      1   1   1   1
  2 = - + - + - + -
      1   2   3   6
Write two methods:
  1. takes a rational number as argument, and returns an array of the denominators
     that are part of an Egyptian fraction representation of that number
  2. takes an array of numbers representing the denominators of an Egyptian
     fraction and calculates the resulting rational number.
  - You will need the Rational Ruby class

# Examples:
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian([1, 2, 3, 6]) # -> Rational(2, 1)
unegyptian([1, 2, 3, 4, 5]) # -> Rational(137, 60)

# Algorithm:
- Convert from rational to egyptian
  - Initialize an empty array for the egyptian number
  - Initialize a denominator variable to 1
  - Iterate a loop that goes until num reaches 0
    - Check to see if Rational(1, denominator) is less than or equal to num
    - If yes, num = num - Rational(1, denominator)
    - Append denominator to the results array
    - Increment denominator
  - Return the results array

- Convert from egyptian to rational
  - Initialize a sum variable to Rational(0, 1)
  - Iterate over the array of denominators
    - Add Rational(1, denominator) to the sum variable
  - Return the sum
=end

def egyptian(rat_num)
  denominators = []
  denominator = 1

  while rat_num > 0
    if Rational(1, denominator) <= rat_num
      rat_num = rat_num - Rational(1, denominator)
      denominators << denominator
    end
    denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  rat_num = Rational(0, 1)

  denominators.each do |d|
    rat_num = rat_num + Rational(1, d)
  end

  rat_num
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
