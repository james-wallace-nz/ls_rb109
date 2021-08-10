=begin
Using the given variable, write an if statement that prints "The sun
is so bright!" if sun is 'visible'. Also, write an unless statement
that prints "The clouds are blocking the sun!" unless sun is visible.

Take advantage of Ruby's expressiveness and use statement modifiers.
=end

sun = ['visible', 'hidden'].sample

puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'