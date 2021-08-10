# What will the given code print? Why?

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

=begin
The code will print 'Breakfast' only. This is because the explicit
return statement on line 4 causes the program to exit the method before
it gets to the `puts` statement on line 6, which will never get run.
Because we pass the return value of the `meal` method ('Breakfast')
to `puts` on line 9, this is what is printed.
=end
