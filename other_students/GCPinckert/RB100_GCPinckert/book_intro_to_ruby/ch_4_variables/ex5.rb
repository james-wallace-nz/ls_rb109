=begin
Program One:

Should not throw any errors. Variable x is initialized
in outer scope and therefore can be accessed both within
the block passed to .times and without when passed to puts. 

Variable x will get incremented 3 times, so the program will
output 3. 
=end

x = 0
3.times do
  x += 1
end

puts x

=begin
Program Two:

Should result in error. Because variable x is initialized
within the block passed to .times, it has only inner scope.
Therefore, it is not available when passed to puts, and will
result in a NameError.
=end

y = 0
3.times do
  y += 1
  x = y
end
puts x

=begin
note the above code will work unless we comment out lines
12-17 where x is initialized in outer scope
=end