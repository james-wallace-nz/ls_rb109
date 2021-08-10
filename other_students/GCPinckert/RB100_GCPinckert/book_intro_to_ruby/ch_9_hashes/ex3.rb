=begin
Exercise 3:
Using some of Ruby's built in Hash methods, write a program that 
loops through a hash and prints all of the keys. Then write a program
that does the same thing, except printing the values. Finally, write
a program that prints both.
=end

# Create a hash
hash = { one: "done", two: "shoe", three: "free", four: "door"}

# Use .each_key with a block to print out all keys
puts "Keys:"
hash.each_key { |key| puts key }
puts "\n\n"

# Use .each_value with a block to print out all values
puts "Values:"
hash.each_value { |value| puts value }
puts "\n\n"

# Use .each_pair with a block to print out both keys and values
puts "Key/Value Pairs:"
hash.each { |key, value| puts "#{key} rhymes with #{value}."}

