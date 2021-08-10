=begin
Exercise 1:
Below is an array and a number. Write a program that checks to
see if the number appears in the array. 
=end

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "The number is in the array."
else
  puts "The number is not in the array."
end
