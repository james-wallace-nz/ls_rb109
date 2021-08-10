=begin
What's my Value? Part 5:
What will the following code print, and why?
=end

a = "Xyzzy"
def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

=begin
The above code will print the string "Xyzzy", because by reassigning
the variable b to the value 'yzzyX' it does not modify the original
string that variable a is pointing to.
=end