=begin
# Problem:
  - Input: a number
    - may be positive, negative or 0
  - Output: a number
    - if input is positive, return negative num
    - if input is 0 or negative, return the original num

# Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# Algorithm:
- Get the absolute value of the input number
- Return the negative version of the absolute value
  - This will return 0 without a negative sign
=end

def negative(num)
  -(num.abs)
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# Technically this isn't as efficient as using an if statement, because we will
# execute the .abs method on *all* numbers, including negative, which isn't
# necessary when using a conditional to solve the problem
