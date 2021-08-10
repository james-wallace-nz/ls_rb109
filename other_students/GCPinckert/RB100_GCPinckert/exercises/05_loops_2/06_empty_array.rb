=begin
Given the array, use loop to remove and print each name. Stop the loop
once names doesn't contain anymore elements. Keep in mind only to use
loop, not while, until, etc.
=end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.length == 0
end

# Now print the names from last to first

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end
