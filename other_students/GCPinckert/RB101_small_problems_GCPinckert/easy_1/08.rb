=begin
- Write a method that takes one argument, an array containing integers
- Returns the average of all the numbers in the array
- The array will never be empty
- The numbers will always be positive integers
- Result should be an integer

Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

- Input: integer
- Output: integer

- Set a sum variable
- Iterate through the array, for each element
  - Add the element to the sum variable
- Return sum / size of array
=end

def average(numbers)
  sum = 0
  numbers.each { |number| sum += number }
  sum / numbers.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts

# Further Exploration: Return a float instead of an int

def average(numbers)
  sum = 0.0
  numbers.each { |number| sum += number.to_f }
  (sum / numbers.size).round(2)
end

puts average([1, 6]) == 3.5
puts average([1, 5, 87, 45, 8, 8]) == 25.67
puts average([9, 47, 23, 95, 16, 52]) == 40.33