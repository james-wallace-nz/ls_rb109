# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17

# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18

# The number 18 does not appear in [25, 15, 20, 17, 23].

# Input: 6 integers
# ouput: output whether last integer appears in first 5. If not, output 6th number plus array of first 5

# Algorithim:
# - initialize empty array, `numbers`
# - loop 5 times
#   - receive valid integer from user and apend to `numbers`
#     - valid integer is an integer
# - receive valid integer from user and assign to `sixth`
# - if `numbers` includes `sixth`
#   - output that number is included in numbers
#   - otherwise output that number is not included in numbers

def valid_integer?(integer)
  integer.to_s.to_i == integer
end

phrases = [
  "Enter the 1st number:",
  "Enter the 2nd number:",
  "Enter the 3rd number:",
  "Enter the 4th number:",
  "Enter the 5th number:",
  "Enter the last number:"
]

numbers = []
last = nil

count = 0
loop do
  puts phrases[count]

  num = nil
  loop do
    num = gets.chomp.to_i
    break if valid_integer?(num)
    puts 'Enter a valid integer'
  end

  if count < 5
    numbers << num
  else
    last = num
  end

  count += 1
  break if count == 6
end

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end
