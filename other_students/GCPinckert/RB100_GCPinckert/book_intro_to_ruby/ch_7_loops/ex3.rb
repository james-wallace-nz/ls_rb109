=begin
Exercise 3:

Write a method that counts down to zero using recursion. 
=end

def to_zero(num)
  if num < 1
    puts num
  else
    puts num
    puts to_zero(num - 1)
  end
end

print "Enter a positive number: "
x = gets.chomp.to_i
to_zero(x)