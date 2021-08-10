# Using the hash from 05.rb, use #map to iterate over numbers
# Return an array containing each number divided by 2
# Assign the returned array to a variable named half_numbers
# Print its value using #p
# Expected output: [50, 25, 5]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |key, value| value / 2 }
p half_numbers