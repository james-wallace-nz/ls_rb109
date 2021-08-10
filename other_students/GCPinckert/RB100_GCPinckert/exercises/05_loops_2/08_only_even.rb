=begin
Using next, modify the code below so that is only prints even numbers.

number = 0

until number == 10
  number += 1
  puts number
end
=end

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

=begin
We have to place next between the incrementation of number and before
puts because we want to skip to the next iteration of the loop before
number is printed to the console, but after it is incremented to match
with the iteration count. 
=end