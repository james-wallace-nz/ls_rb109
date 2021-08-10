# What will the given code print? Why?

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

=begin
The code will print the string 'Dinner' and then the string 'Breakfast'
on a new line beneath it. This is because the `puts` method is called
within the method and executes, and the return value of the method
is 'Breakfast', which we pass to `puts` on line 8.
=end