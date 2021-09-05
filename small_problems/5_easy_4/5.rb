# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# problem:

# identify all multiples of 3 or 5 from 1 to integer argument
# sum the multiples

# input: integer
# output: integer

# algorithim:
# - initialise `multiples` empty array
# - find multiples of 3 or 5 and add to `multiples`
# - sum `multiples` and return

# Examples

def multisum(integer)
  multiples = []
  1.upto(integer) do |index|
    multiples << index if index % 3 == 0 || index % 5 == 0
  end
  multiples.sum
end

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(integer)
  (1..integer).reduce(0) do |sum, index|
    if multiple?(index, 3) || multiple?(index, 5)
      sum + index
    else
      sum
    end
  end
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
