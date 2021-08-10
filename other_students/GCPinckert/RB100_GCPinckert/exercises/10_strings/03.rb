=begin
Using the given code, compare the value of name with the string 'RoGeR'
while ignoring the case of both strings. Print true is the values are
the same; print false if not. Then, perform the same case-insensitive
comparison, except compare the value of name with the string 'DAVE'
instead of 'RoGeR'
=end

name = 'Roger'

puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')