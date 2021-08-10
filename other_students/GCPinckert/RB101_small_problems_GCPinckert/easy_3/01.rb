# Write a program that solicits 6 numbers from the user
# Then prints a message saying if the 6th number appears among the other numbers

# Example1:
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

# Example2:
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

# Questions:
  # What is valid input? Assume any integer

# Input: 6 integers 
# Output: String response and array of 5 first integers

# Algorithm:
  # Get valid input from user
  # Add number to an array
  # Repeat until 5 numbers are received
  # Get valid number from user
  # Check to see if last number is in array of other numbers
  # Output result to user

def get_valid_num(iteration)
  num = 0

  loop do
    puts "==> Enter the #{iteration} number:"
    num = gets.chomp
    break if num.to_i.to_s == num
    puts "==> Not a valid number. Please try again."
  end

  num.to_i
end

def display_result(last_num, numbers)
  if numbers.include?(last_num)
    puts "The number #{last_num} appears in #{numbers}."
  else
    puts "The number #{last_num} does not appear in #{numbers}."
  end
end

numbers = []
last_num = 0
iterations = ['1st', '2nd', '3rd', '4th', '5th', 'last']

iterations.each_with_index do |i, idx|
  if idx < (iterations.size - 1)
    numbers << get_valid_num(i)
  else
    last_num = get_valid_num(i)
  end
end

display_result(last_num, numbers)