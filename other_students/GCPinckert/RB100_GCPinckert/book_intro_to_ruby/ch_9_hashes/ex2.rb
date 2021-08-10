=begin
Exercise 2:
Notice Ruby's two different merge methods: merge and merge!. What
is the difference between them? Write a program that uses both
and illustrates this difference.
=end

# Write an instance of merge that shows how it returns a new hash value
# and that the original hash values are preserved

og_hash = { long_beach: "Snoop Dogg", compton: "Dr. Dre", }
new_hash = { compton: "Kendrick Lamar", ladera_heights: "Tyler, the Creator"}

puts "This is the original hash: #{og_hash}"

together_hash = og_hash.merge(new_hash)

puts "This is the merged hash: #{together_hash}"
puts "But the original hash is still the same: #{og_hash}"
puts "\n\n"

# Write an instance of merge! that shows how it destructively modifies
# the value of the original calling hash. 

calling_hash = { eyes: "brown", hair: "blond", age: 32 }
hash_to_add = { height: "6 ft", weight: "150 lbs" }

puts "This is the calling hash: #{calling_hash}"

merged_hash = calling_hash.merge!(hash_to_add)

puts "This is the merged hash: #{merged_hash}"
puts "After the merge, the original calling hash has been mutated:" +
     "\n#{calling_hash}"
