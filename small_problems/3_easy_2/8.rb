# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# input: integer > 0, sum or product
# output: sum or product of all numbers between 1 and integer

# algorithm:
# - get valid integer
# - get valid method
# - if method equals `sum`
#   - `sum` = 0
#   - iterate from 1 to integer
#     - increment `sum` on each iteration
#   - return sum
#   - otherwise method equals `product`
#     - `product` = 0
#     - increment `product` by * `integer` on each iteration

integer = nil
method = nil

def valid_integer?(integer)
  integer.integer? && integer > 0
end

def valid_method?(method)
  method.downcase == 's' || method.downcase == 'p'
end

def sum(integer)
  sum = 0
  1.upto(integer) do |n|
    sum += n
  end
  sum
end

def product(integer)
  product = 1
  1.upto(integer) do |n|
    product *= n
  end
  product
end

loop do
  puts 'Please enter an integer greater than 0'
  integer = gets.chomp.to_i
  break if valid_integer?(integer)
  puts 'Error, please enter a valid integer'
end

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  method = gets.chomp.downcase
  break if valid_method?(method)
  puts 'Error, please enter a valid method'
end

if method == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum(integer)}"
elsif method == 'p'
  puts "The product of the integers between 1 and #{6} is #{product(integer)}"
else
  puts 'Error'
end


# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
