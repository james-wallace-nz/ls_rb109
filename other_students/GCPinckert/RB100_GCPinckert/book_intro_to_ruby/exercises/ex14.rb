=begin
Exercise 14:
Given the following array, turn it into a new array that consists of
strings containing one word. 
  *["white snow", etc...] => ["white", "snow", etc...]
Look into using Array's map and flatten methods, as well as String's
split method.
=end

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! { |string| string.split(' ') }
a.flatten!
p a
