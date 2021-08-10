# Using the given array, use #select to iterate over numbers.
# Return a new array that contains only numbers divisible by three.
# Assign the return value to a variable named divisible_by_three
# Print its value using #p
# Expected output: [9, 21, 39]

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |num| num % 3 == 0 }

p divisible_by_three