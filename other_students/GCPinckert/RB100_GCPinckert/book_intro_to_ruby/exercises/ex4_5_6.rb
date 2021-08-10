=begin
Exercise 4:
Given the array [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], append 11 to the
end of the array. Then prepend 0 to the beginning.
=end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.push(11)
p array # check array

array.unshift(0)
p array # check array

=begin
Exercise 5:
Get rid of 11. And append a 3.
=end

array.pop
p array # check array

array.push(3)
p array # check array

=begin
Exercise 6:
Get rid of duplicates without specifically removing any one value.
=end

array.uniq!
p array # check array