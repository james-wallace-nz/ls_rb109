=begin
What's my Value? Part 6:
What will the following code print, and why?
=end

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

=begin
This program will result in a NameError, because the local variable
a within the method my_value is never assigned a value.
=end