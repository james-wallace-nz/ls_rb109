=begin
What's My Value? Part 1:
What will the following code print and why?
=end

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

=begin
Answer:
The program will print 7, because while the my_value method returns
17, this value is not reassigned to the variable a in outside scope. 
Instead, a still points to the initial value of 7 in memory.
=end