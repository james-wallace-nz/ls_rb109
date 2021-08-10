# Using the given array, iterate with #map
# Return a new array with each number doubled
# Assign the returned array to a variable named doubled_numbers
# Print this value using #p
# Expected output: [2, 4, 6, 8, 10]

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |num| num * 2 }

p doubled_numbers