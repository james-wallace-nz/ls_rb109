# accept a string of numbers separated by spaces
# turn into an array of string numbers with split then map &:to_i
# so now we have an array of integers
# sort this array of integers, then reverse it (biggest first)

def high_and_low(str_of_num)
  result = str_of_num.split.map(&:to_i).sort
  "#{result[-1]} #{result[0]}"
end

p high_and_low("1 2 3 4 5")

# GOOD SOLUTION
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end