=begin
What's my Value? Part 10:
What will the following code print, and why?
=end

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

=begin
The program will result in an error. Even though a block can access
variables initialized in outer scope, a method definition is self 
contained. Therefore, when the block passed to .each within the
my_value method definition tries to execute the line with variable a,
it will raise an exception as variable a has not been defined within
the method.
=end