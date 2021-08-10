# Using the multiply method from 04.rb:
# Write a method that:
  # Computes the square of its argument

def multiply(num_a, num_b)
  num_a * num_b
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

# Further Exploration:
# Generalize the method to a "power to the n"

def power_of_n(num, exponent)
  num ** exponent
end

puts power_of_n(5, 2) == 25
puts power_of_n(5, 5) == 3125

# Make a "power to the n" method while still using the multiply method

def power_of(num, exponent)
  product = multiply(num, num)
  
  (exponent - 2).times { product *= num }

  product
end

puts power_of(5, 2) == 25
puts power_of(5, 5) == 3125
puts power_of(2, 6) == 64
