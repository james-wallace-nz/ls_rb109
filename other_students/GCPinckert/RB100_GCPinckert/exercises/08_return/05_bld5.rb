# What will the given code print? Why?

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

=begin
The code will print the string "Dinner", which is passed to `puts`
on line 5. Then it will print the value `nil`, which is passed to `p`
on line 8. `nil` is the value of the last evaluated expression in the
method `meal`, and therefore it is the return value of the method.
=end
