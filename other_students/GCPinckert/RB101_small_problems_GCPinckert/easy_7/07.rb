=begin
# Problem:
- Input: an array of integers
  - Will never be empty
  - Test cases are all positive non-zero numbers
- Output: a float
  - (product of all input nums) / number of elements in input array
  - rounded to 3 decimal places
  - Print the following message to the screen
    - "The result is #{float_result}"

# Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
  - Input [3, 5]
  - 3 * 5 = 15
  - 15 / 2.0 = 7.5
  - display trailing 0s
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Algorithm:
- Iterate over input array, multiply each num to get total product
- Divide total product by input array size
- Output to the console using the proper formatting
=end

def show_multiplicative_average(numbers)
  average = numbers.inject(:*) / numbers.size.to_f
  puts format "The result is %.03f", average
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

# Further Exploration
  # If we do not include a to_f at some point in our calculations, the program will
  # perform integer division, and we will not see a decimal number result
