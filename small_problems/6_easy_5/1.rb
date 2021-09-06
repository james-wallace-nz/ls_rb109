# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

=begin
PROBLEM
Sum the ASCII value for each character in a string and return it

Input: String
Output: Integer

DATA STRUCTURES

String
Integer

ALGORITHM
- initialize sum to 0
- loop through characters in the string argument
  - increment `sum` by the return value of `ord` called on the current character
- return sum

CODE
=end

def ascii_value(string)
  sum = 0

  string.chars.each do |char|
    sum += char.ord
  end

  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
