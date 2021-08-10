# digit_product should return the product of digits in the string argument
# Implement this method without reduce or inject
# The given code shows a return value of 0
# Whats wrong and how can you fix it?

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

=begin   
The problem here is that we initialize the variable product to the value 0.
Therefore, each time through the block when we multiply it by the digit,
we will get the value 0 (because any number multiplied by 0 is 0). Instead,
we should initialize the variable to a value of 1. Because any number
multiplied by 1 is simply itself, this will not adversely effect the end
total of product.
=end