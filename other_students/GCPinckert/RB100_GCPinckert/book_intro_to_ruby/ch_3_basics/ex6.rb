print "Enter a float: "
num_1 = gets.chomp.to_f

print "Enter another float: "
num_2 = gets.chomp.to_f

print "Last one! "
num_3 = gets.chomp.to_f

def square(n)
  n ** 2
end

puts square(num_1)
puts square(num_2)
puts square(num_3)