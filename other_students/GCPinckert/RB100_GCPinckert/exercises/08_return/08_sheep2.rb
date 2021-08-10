# What will the given code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

=begin
The code will print the integers 0-4 (each on a new line) and finally
the integer 10 (also on a new line). 0, 1, 2, 3, 4 gets printed each 
time the block passed through time is iterated over and executed within
the method. Because 10 is the last value evaluated by the method, it is
returned by the method and passed to `puts` on line 10
=end