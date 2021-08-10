print "Please enter a four digit number: "
num = gets.chomp.to_i

thousands = num / 1000
hundreds = ( num / 100 ) % 10
tens = ( num % 100 ) / 10
ones = num % 10

puts "The digit in the thousands place is #{thousands}."
puts "The digit in the hundreds place is #{hundreds}."
puts "The digit in the tens place is #{tens}."
puts "The digit in the ones place is #{ones}."

=begin
Original Answer:

num = 5346
thousands_place = 5346 / 1000
hundreds_place = (5346 / 100) % 10
tens_place = (5346 % 100) / 10
ones_place = 5346 % 10

puts num
puts thousands_place
puts hundreds_place
puts tens_place
puts ones_place
=end