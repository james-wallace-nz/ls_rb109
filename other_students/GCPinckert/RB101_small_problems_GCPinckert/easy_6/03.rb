# Input: an integer, specifying number of digits in result we are looking for
# Return: an integer, index of the first number in the Fibonacci sequence with the
  # appropriate number of digits (argument provided)
# Fibonacci sequence = an array of numbers
  # Index 0 and Index 1 are both 1 by definition
  # Each subsequent number is the sum of the previous two numbers

# Examples:
  # find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
  # find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
  # find_fibonacci_index_by_length(10) == 45
  # find_fibonacci_index_by_length(100) == 476
  # find_fibonacci_index_by_length(1000) == 4782
  # find_fibonacci_index_by_length(10000) == 47847

# Initialize array according to Fibonacci definition: [1, 1]
# Initialize an index counter at 2
# Start a loop
  # Sum array[counter - 1] and array [counter - 2]
  # Break the loop if the amount of digits in sum is equal to the number argument
  # Append sum to the array
  # Increment counter
# Return the counter + 1

def find_fibonacci_index_by_length(num_of_digits)
  fibonacci = [1, 1]
  counter = 2

  loop do
    next_number = fibonacci[counter - 1] + fibonacci[counter - 2]
    fibonacci << next_number
    break if next_number.to_s.size >= num_of_digits
    counter += 1
  end

  counter + 1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
