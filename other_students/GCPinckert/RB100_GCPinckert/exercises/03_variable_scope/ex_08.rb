=begin
What's my Value? Part 8:
What will the following code print, and why?
=end

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

=begin
The program will result in a NameError, because that variable a which
is used in the block has not be defined in outer scope. Therefore, when
the puts method is called, a is a undefined variable with no value.
=end