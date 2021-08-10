=begin
What's my Value? Part 2:
What will the following code print, and why?
=end

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

=begin
The above code will print 7, because the variable a that exists
within the method is a seperate one than exists in outside scope.
Therefore, when the value 17 gets reassigned to a inside the
method, it does not affect the variable a in outside scope. 
=end