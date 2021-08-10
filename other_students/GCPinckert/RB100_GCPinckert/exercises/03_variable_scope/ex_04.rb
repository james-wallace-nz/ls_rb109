=begin
What's my Value? Part 4:
What will the following code print, and why?
=end

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

=begin
The code above will print the string "Xy-zy", because the method my_value
changes the original value of variable a (i.e. it mutates the caller). 
Strings are not an immutable data type, so a copy of string
a is not created in memory. Because both variables b and a point to
the same value in memory, printing a to the console will print the
modified string.
=end