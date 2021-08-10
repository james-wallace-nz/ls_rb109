# What will the given code print? Why?

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

=begin
The code will print the string 'Breakfast', because that is what is
returned from the method. The return statement ensures that the 
program exists the method before every being able to evaluate the
line with the string 'Dinner'.
=end