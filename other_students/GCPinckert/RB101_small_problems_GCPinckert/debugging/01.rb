=begin
Expected Output: 
The program should count down from 10 to 1
=end

counter = 10

counter.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'

=begin
The problem here is that we are using a helper method to decrement the counter
variable. Passing in counter to the method causes the variable counter within
the method to point to the same value in memory. But because counter is 
re-assigned within the method, the original counter variable in the main aspect
of the program is never changed.

Getting rid of the helper method and just decrementing the counter within the
block fixes the output.
=end
