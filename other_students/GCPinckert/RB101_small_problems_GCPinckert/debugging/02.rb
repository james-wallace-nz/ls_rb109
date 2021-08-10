def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=begin
Converting the `name` variable to an array of chars does not modify the original
string object referenced by `name`. Therefore when we concatenate 'HEY' and `name`,
we are adding the original string object 'you' unmodified. Get the expected
output by mutating the string object referenced by `name` with upcase!
=end