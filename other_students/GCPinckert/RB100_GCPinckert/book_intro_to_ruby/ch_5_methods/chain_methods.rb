# create a method that returns a value
def add_three(n)
  n + 3
end

add_three(5) # returns 8, therefore...

# keep calling methods on the returned value
add_three(5).times { puts 'this should print 8 times' }
# note: this entire expression returns 8

# using puts to output the incremented value throws an error:

def bad_add_three(n)
  puts n + 3 # puts returns nil so the whole method returns nil
end

bad_add_three(5).times { puts "will this work?" }
# nil cannot respond to .times method call so we get an error

# fix the problem:
def fixed_add_three(n)
  new_value = n + 3
  puts new_value # prints the value to the console
  new_value # allows the method to return the value to it's caller
end

fixed_add_three(5).times { puts 'this will now print 8 times' }