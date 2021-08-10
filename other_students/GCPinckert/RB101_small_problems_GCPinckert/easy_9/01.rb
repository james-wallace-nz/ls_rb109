=begin
# Problem:
  - Input: an array and a hash
    - The array contains 2 or more elements that constitute a person's name
    - The element's should be combined with adjoining spaces for the name to be accurate
    - The hash contains the keys: :title and :occupation with the appropriate values
  - Output: print a message to the console
    - Print a greeting that uses the person's full name
    - The greeting should mention that person's title and occupation

# Examples:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.
  - three variables:
  - name = all elements of array joined with a space delimiter
  - title = the value associated with :title in the given hash
  - occupation = the value associated with :occupation in the given hash

# Algorithm:
  - Join all the elements in the given array with a space delimiter and save the result in name
  - Access the value associated with :title and save the result in title
  - Access the value associated with :occupation and save the result in occupation
=end

def greetings(full_name, details)
  puts "Hello, #{full_name.join(' ')}! It's nice to have a " \
       "#{details[:title]} #{details[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
