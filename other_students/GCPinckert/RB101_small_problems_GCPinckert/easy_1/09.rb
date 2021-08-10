=begin
- Wite a method that takes one argument, a positive integer
- Returns the sum of its digits
- Challenge: don't use any basic looping constructs

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

- Input = integer
- Output = integer

- Split the integer up into an array of its digits
- Sum all the elements of the array
- Return the sum
=end

def sum(number)
  number.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45