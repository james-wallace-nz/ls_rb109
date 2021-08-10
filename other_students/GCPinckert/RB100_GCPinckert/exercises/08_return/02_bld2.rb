# What will the given code print? Why?

def meal
  'Evening'
end

puts meal

=begin
The code above will print the string 'Evening', because that is
the value returned by the method `meal`. Though there is no explicit
return statement, the method will automatically return the result of
the last line evaluated, in this case, `Evening`. 
=end