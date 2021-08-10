# Using the given arrays, remove 'lizard' from my_pets
# Output: 'I have a pet fish!'

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop
puts "I have a pet #{my_pets[0]}!"