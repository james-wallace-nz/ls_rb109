# The following code is outputting the same message every time
# Why?
# Fix the code so it behaves as expected

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

=begin   
The above code will always print "Today's weather will be sunny!" because
the values randomly assigned to sunshine ('true, 'false') are both 
truthy. They are strings, not the boolean values of true or false. Remove
the quotes around each and the program will function properly.
=end

# Test output
puts predict_weather
puts predict_weather
puts predict_weather
puts predict_weather
puts predict_weather
