=begin
What's my Value? Part 7:
What will the following code print, and why?
=end

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

=begin
This program will output 3, because the line a = element is inside a 
block, and therefore the variable is available. Each time a runs through
the block, it is reassigned to the values 1, 2, and 3, respectively. 
Because the last assignment is to the number 3, that is what will be
printed when we puts a to the console. 
=end