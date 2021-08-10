=begin
Exercise 3:

Write a program, that includes a method called "multiply" that takes
two arguments and returns the product of the two numbers.
=end

def multiply(num1, num2)
  num1 * num2
end

print "Please enter a number: "
num1 = gets.chomp.to_i
print "Please enter another number: "
num2 = gets.chomp.to_i

puts "The product of your numbers is: #{multiply(num1, num2)}"