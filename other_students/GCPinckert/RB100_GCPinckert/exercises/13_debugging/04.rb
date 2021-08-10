# The given code is trying to add a new value to the pets hash
# It mistakenly removes previously stored values
# Fix the code so all three dog's names will be in the hash

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets 
#=> {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}

=begin   
The problem is that by using the bracket notation with the assignment
operator, we are reassigning the value of the key :dog within the hash.
Use the concatenation operator to add the string 'bowser' to the array
value that already exists within the hash.
=end