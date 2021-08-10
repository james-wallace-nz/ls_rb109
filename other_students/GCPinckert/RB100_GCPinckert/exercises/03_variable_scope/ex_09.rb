=begin
What's my Value? Part 9:
What will the following code print, and why?
=end

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

=begin
The program will output 7, because the local variable a being passed
into the block is really a placeholder variable representing each
element of the array as we iterate over them. Therefore, where the 
variable a initialized in the outer scope is pointing is not changed
and it still holds the value 7. 
=end