# What will the given code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

=begin
The code will print the number 0 - 5 all on separate lines. The .times
method will iterate through the block given 5 times, passing in the
values 0, 1, 2, 3, 4 each time, respectively. Therefore, when the `puts`
method is run, it will print each of these values to the console. 
Finally, the last `puts` method call on line 9 is passed the return
value of the count_sheep method, and .times returns the integer value
which called it, in this case 5.
=end