# with while loop
print "Please enter a number: "
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"

# with until loop
print "Please enter another number: "
y = gets.chomp.to_i

until y < 0
  puts y
  y -= 1
end

puts "Done!"

# for loop with range
z = gets.chomp.to_i
for i in 1..z do
  puts i
end

puts "Done!"

# for loop ith array
a = [1, 2, 3, 4, 5]
for i in a do
  puts i
end

puts "Done!"
