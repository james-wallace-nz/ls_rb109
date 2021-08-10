=begin
What method could you use to find out if a Hash contains a specific
value in it? Write a program to demonstrate this use. 
=end

# Use .has_value? method to see if a given value is present

hash = {one: 1, two: 2, three: 3, four: 4, five: 5}

print "Pick a number, any number: "
num = gets.chomp.to_i
if hash.has_value?(num)
  puts "I have that number."
else
  puts "I don't have that number."
end