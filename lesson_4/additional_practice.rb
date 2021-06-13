# 1.

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

hash = {}

flintstones.each_with_index do |name, index|
  hash[name] = index
end
p hash


# 2.

# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.reduce(0) { |num, (key, value)| num + value }

total_age = 0
ages.each { |name, age| total_age += age }
p total_age

p ages.values.inject(&:+)


# 3.

# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

ages.delete_if { |k, v| v >= 100 }
p ages


# 4.

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age = ages.values.first
ages.each do |name, age|
  min_age = age if age < min_age
end
puts min_age

p ages.values.min


# 5.

# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

p flintstones.index { |name| name.start_with?('Be') }


# 6.

# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0..2] }
p flintstones


# 7.

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

frequency = Hash.new(0)
statement.chars.each do |char|
  frequency[char] += 1
end
p frequency


# 8.

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# If we modify an array while iterating then some elements in the array will be skipped as elements are added or removed while iteration takes place

# 1
# 3

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1
# 2


# 9.

# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"

# would be:

# words = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.

def titelize(string)
  words = string.split
  words.each do |word|
    word.capitalize!
  end
  words.join(' ')
end

p titelized = titelize(words)


# 10.

# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

def age_group(age)
  if age.between?(0,17)
    'kid'
  elsif age.between?(18,64)
    'adult'
  else
    'senior'
  end
end

munsters.each do |name, details|
  age_group = age_group(details['age'])
  details['age_group'] = age_group
end

pp munsters
