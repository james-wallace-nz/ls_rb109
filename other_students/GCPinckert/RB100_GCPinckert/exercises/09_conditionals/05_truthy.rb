# What will the given code print? Why?

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

=begin
The code will print "My favorite number is 7." because 7 evaluates to
true in Ruby. In fact, all numerical values in Ruby are "truthy", aka
they evaluate to true, so any number value assigned to number will
result in the first puts statement being run
=end