=begin
Using the given variable, write an unless statement that prints "The
clouds are blocking the sun!" unless sun is 'visible'
=end

sun = ['visible', 'hidden'].sample

puts "The clouds are blocking the sun!" unless sun == 'visible'