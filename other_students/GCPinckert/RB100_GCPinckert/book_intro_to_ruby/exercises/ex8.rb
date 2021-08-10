=begin
Exercise 8:
Create a Hash, with one key-value pair, using both Ruby syntax styles
=end

# hash rocket style
hash = { :a => "apple" }
p hash

# new syntax
hash = { b: "banana" }
p hash

# Hash.new
hash = Hash.new
hash[:c] = "car"
p hash
