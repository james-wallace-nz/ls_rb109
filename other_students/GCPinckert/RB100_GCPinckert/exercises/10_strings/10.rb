=begin
Using the given code, print true if colors includes the color yellow
and false if it doesn't. Then, print true if colors includes the 
color purple and print false if it doesn't.
=end

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

# if we change colors...
colors = 'blue boredom yellow'

puts colors.include?('red')
# outputs true, because 'red' is inside the word 'boredom'