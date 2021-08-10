=begin
Exercise 3:
Using the array [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], use the select
method to extract all odd numbers into a new array.
=end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_nums = array.select { |num| num % 2 == 1 }

# check odd_nums array
p odd_nums