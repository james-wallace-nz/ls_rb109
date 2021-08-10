# Use #select to iterate over the numbers hash from 06.rb
# Return a hash containing only key-value pairs where the value is < 25
# Assign the returned hash to a variable named low_numbers
# Print it's value using #p
# Expected output: {:low=>10}

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |key, value| value < 25 }
p low_numbers