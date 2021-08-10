# Use #each to iterate over the given hash numbers
# Print each element's key-value pair
# Expected output: 
  # A high number is 100.
  # A medium number is 50.
  # A low number is 10.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} number is #{value}."
end