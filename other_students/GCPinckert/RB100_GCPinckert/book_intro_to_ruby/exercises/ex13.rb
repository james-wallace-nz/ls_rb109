=begin
Exercise 13:
Use Ruby's Array method "delete_if" and String method "start_with?"
to delete all of the words that begin with an "s" in the given array.
=end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with?('s') }
p arr

# Recreate arr and get rid of all the words that start with "s" or "w"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |string| string.start_with?('s', 'w') }
p arr
