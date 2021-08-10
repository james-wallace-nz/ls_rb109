=begin
What's my Value? Part 3:
What will the following code print, and why?
=end

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

=begin
The code above will print 7, because the while the local variable "a"
within the method is being reassigned to the value of "b" (12), it
does not effect the value of variable "a" in outside scope. 
=end