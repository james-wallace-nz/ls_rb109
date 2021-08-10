# Using the given array, select 'fish' and 'lizard' simultaneously
# Assign the return value to a variable called my_pets
# Print the contents of my_pets as a single string
# Output: 'I have a pet fish and a pet lizard!'
# You must use my_pets to get 'fish' and 'lizard' in the message

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets.drop(2)
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"