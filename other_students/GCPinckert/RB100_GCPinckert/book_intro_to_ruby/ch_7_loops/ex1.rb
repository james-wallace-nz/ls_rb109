=begin
Exercise 1:

What does the each method in the following program return after
it is finished executing?
=end

x = [1, 2, 3, 4, 5]
answer = x.each do |a| 
  a + 1
end
# => [1, 2, 3, 4, 5]
# .each ALWAYS returns the original array that it is called on

puts answer