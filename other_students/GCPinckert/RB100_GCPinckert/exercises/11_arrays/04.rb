# Using the given code, select 'dog' from pets
# Add the return value to my_pets
# Print the value of my_pets

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets << pets[1]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"