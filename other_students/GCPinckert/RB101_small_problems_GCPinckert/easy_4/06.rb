# Write a method that takes an array of numbers
# Return an array with the same number of elements
# Each element has the running total from the original array

# Option 1:

# Initialize total variable to 0
# Iterate through provided array (transformation)

def running_total(array_nums)
  total = 0
  array_nums.map { |num| total += num }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
puts

# Option 2: using each_with_object

def running_total2(array)
  total = 0
  array.each_with_object([]) do |num, arr|
    total += num
    arr << total
  end
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []
puts

# Option 3: using inject

def running_total3(array)
  sum = 0
  array.map do |num|
    sum = [sum, num].inject(:+)
  end
end

puts running_total3([2, 5, 13]) == [2, 7, 20]
puts running_total3([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total3([3]) == [3]
puts running_total3([]) == []
puts

# Option 4
# Initialize empty array
# Iterate over input array with counter variable to track iterations /index
  # For each element, use iteration/idx tracker to slice and total a portion
  # of the array
  # Append the current total to the empty array
# Return the array of totals

def running_total4(numbers)
  sums = []
  numbers.each_with_index do |_, idx|
    current_total = numbers[0..idx].sum
    sums << current_total
  end

  sums
end

p running_total4([2, 5, 13]) == [2, 7, 20]
p running_total4([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total4([3]) == [3]
p running_total4([]) == []
