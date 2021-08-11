number = 2468

thousands = number / 1000 % 10
hundreds = number / 100 % 10
tens = number / 10 % 10
ones = number / 1 % 10

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"