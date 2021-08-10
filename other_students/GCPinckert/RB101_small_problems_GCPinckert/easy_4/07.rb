=begin
# Problem
 - Input: A string of numbers
 - Output: the same number received as an input string converted to an integer
 
 - Do not use any of the built-in Ruby conversion methods such as to_i or Integer()
 - Do not worry about leading `+` or `-` signs
 - All characters given in the input string will always be numeric (there will be no invalid characters)
 - Calculate the result by analyzing the characters in the string
 
 # Examples
string_to_integer('4321') == 4321
string_to_integer('570') == 570

# Algorithm
- Initialize a counter variable
- Initialize a number to 0
- Initialize a multiplyier to 1
- Reverse the input string
- While the counter variable is less than the size of the input string
  - Get the char from the string represented by the current iteration's counter variable
  - Initialize current_digit to the integer version of the current character
  - Multiply current_digit by the multiplyer and add the result to number
  - Increment the counter by 1
  - Increment the multiplyer by 10
- Return the number
=end

def char_to_digit(char)
  case char
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  else          puts "invalid number"
  end
end

def string_to_integer(num_string)
  counter = 0
  number = 0
  multiplyer = 1
  num_string = num_string.reverse
  
  loop do
    break if counter >= num_string.length
    current_char = num_string[counter]
    current_digit = char_to_digit(current_char)
    number += (current_digit * multiplyer)
    counter += 1
    multiplyer *= 10
  end
  
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

=begin
# Further Exploration

# Problem
Write a hexadecimal_to_integer method that converts a string representing 
a hexadecimal number to its integer value.

- Input: string representing hexadecimal number
- Output: integer value of string

- hexadecimal numbers work the same as base 10, but the base is 16
- Follow the steps in the problem above, but instead of incrementing the multiplyer
  by 10, increment it by 16.
- To convert the chars to digits, just add the conversions for A B C D E F
- A = 10 B = 11 C = 12 D = 13 E = 14 F = 15 (the sixteenth digit here is 0)
- Note in the example that you can encounter letters of either case

# Example
hexadecimal_to_integer('4D9f') == 19871
=end

def hex_char_to_digit(char)
  case char.downcase
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when 'a' then 10
  when 'b' then 11
  when 'c' then 12
  when 'd' then 13
  when 'e' then 14
  when 'f' then 15
  else          puts "invalid number"
  end
end

def hexadecimal_to_integer(num_string)
  counter = 0
  number = 0
  multiplyer = 1
  num_string = num_string.reverse

  loop do
    break if counter >= num_string.length
    current_char = num_string[counter]
    current_digit = hex_char_to_digit(current_char)

    number += (current_digit * multiplyer)
    counter += 1
    multiplyer *= 16
  end

  number
end

p hexadecimal_to_integer('4D9f') == 19871
