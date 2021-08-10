=begin
# Problem

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

- No input
- Randomly generate a number between 20 - 200
  - Should it be a whole integer?
  - Is the range inclusive? (i.e. can Teddy be both 20 and 200?)
- Output that number interpolated into the given sentence.

# Example
 => Teddy is 69 years old!
 
# Data Structures
- Ints & strings

# Algorithim

- Initialize a range of numbers, 20 - 200, inclusive
- Convert the range to an array
- Randomly select a number from that array
- Output the selected number interpolated into the given sentence
=end

def display_teddy_age
  age = (20..200).to_a.sample
  puts "Teddy is #{age} years old!"
end

display_teddy_age
display_teddy_age
display_teddy_age

# Further Exploration:
# Have the program ask for name, and print the age for that person
# Use "Teddy" if no name is entered.

def display_age(name="Teddy")
  age = (20..200).to_a.sample
  puts "#{name} is #{age} years old!"
end

puts "What's your name?"
name = gets.chomp

display_age(name)
display_age
