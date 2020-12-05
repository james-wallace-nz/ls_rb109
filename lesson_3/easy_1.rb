# 1

numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers
# 1
# 2
# 2
# 3

# uniq did not mutate the caller, numbers. it returned a new array with unique elements
# the puts method calls to_s on the its argument, which is why it displays the numbers the way it does


# 2

# ! at the end of a method name indicates it mutates the caller, while ? at the end of a method name indicates it returns boolean

# a) != is not equal, it is used for comparison, e.g. an if statement
# b) !user_name will return the inverse truthy/falsy value of user_name. If user_name is truthy, !user_name will return false - opposite of boolean equivalent
# c) uniq! is a method and ! indicates it mutates the caller. So words.uniq! will modify the words collection so it only contains unique elements
# d) the ternary operator for if...else
# e) ? at the end of a method name indicates that method returns a boolean value
# f) !! returns true or false based on the truthiness of the variable or method name it is next to. - returns boolean equivalent


# 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice[26, 9] = 'urgent'

advice = advice.split
advice[6] = 'urgent'
advice.join(' ')

advice.gsub!('important', 'urgent')


# 4

number = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# => 2
# numbers = [1, 3, 4, 5]

numbers.delete(1)
# => 1
# numbers = [2, 3, 4, 5]


# 5

(10..100).include?(42)


# 6

famous_words = "seven years ago..."

puts "Four score and " << famous_words

puts "Four score and " + famous_words

puts famous_words.prepend("Four score and ")

# 7

# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

flintstones.flatten!


# 8

# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.select { |k, v| k == 'Barney' }.to_a.flatten!

flintstones.assoc('Barney')
