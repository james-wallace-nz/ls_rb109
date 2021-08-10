=begin

PROBLEM
- Input: String
- Output: Integer

rules
  - Explicit rules
    - Write a method that takes a string of digits and returns the
      appropriate number as an integer
    - Do not worry about leading signs
    - Do not use string methods

ALGORITHM
- Create a range of numbers from 0 to 1
- Go through each character in input string
  - transform the character to its index equivalent from the given range
    plus 1
  - Multiply each number times 10 ** ( string.size - (index + 1) )
  - Add number to a running total

=end

def string_to_integer(string)
  single_digits = ('0'..'9').to_a
  total = 0
  
  string.chars.each.with_index do |current_number, index|
    actual_number = single_digits.index(current_number)
    multiplier = string.size - (index + 1)
    total += actual_number * (10 ** multiplier) 
  end
  
  total
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
