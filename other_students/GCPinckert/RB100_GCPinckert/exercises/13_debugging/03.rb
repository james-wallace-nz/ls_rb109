# When the user inputs 10, the program should print "The result is 50!"
# Why is the output different?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

=begin   
The problem here is that gets.chomp returns a string value, not an
integer. Therefore, when we pass number to the method multiply_by_five
it is passed the string '10', and so the operation results in the 
program outputting '1010101010'. Call the String method .to_i on number
to fix the issue.
=end