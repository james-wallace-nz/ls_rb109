# Modify the hash numbers as in 07.rb
# Use the destructive version of #select (#select!)
# Expected output:
  # {low: 10}
  # {low: 10}

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! { |key, value| value < 25 }

p low_numbers
p numbers

# Avoid creating an alias by getting rid of the assignment statement
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.select! { |key, value| value < 25 }

p numbers