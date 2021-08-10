# Write a program that:
  # Prompts the user for two positive integers
  # Prints the results of the following operations:
    # addition
    # subtraction
    # product
    # quotient
    # remainder
    # power
  # You do not need to validate input

# Example:
  # ==> Enter the first number:
  # 23
  # ==> Enter the second number:
  # 17
  # ==> 23 + 17 = 40
  # ==> 23 - 17 = 6
  # ==> 23 * 17 = 391
  # ==> 23 / 17 = 1
  # ==> 23 % 17 = 6
  # ==> 23 ** 17 = 141050039560662968926103

# Input: 2 integers, not validates
# Output: 6 integers, the result from the above calculations

# Implied rules: use integer operations such as division, not floats

# Algorithm:
  # Get num_a
  # Get num_b
  # Calculate sum and display
  # Calculate difference and display
  # Calculate product and display
  # Calculate quotient and display
  # Calculate remainder and display
  # Calculate power and display

def prompt(msg)
  puts "==> #{msg}"
end

prompt "Enter the first number:"
num_a = gets.chomp.to_i

prompt "Enter the second number:"
num_b = gets.chomp.to_i

prompt "#{num_a} + #{num_b} = #{num_a + num_b}"
prompt "#{num_a} - #{num_b} = #{num_a - num_b}"
prompt "#{num_a} * #{num_b} = #{num_a * num_b}"
prompt "#{num_a} / #{num_b} = #{num_a / num_b}"
prompt "#{num_a} % #{num_b} = #{num_a % num_b}"
prompt "#{num_a} ** #{num_b} = #{num_a ** num_b}"