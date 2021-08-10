=begin
Using the given code, combine the two names together to form a full
name and assign that value to a variable named full_name. Then, 
print the value of full_name. 
=end

first_name = 'John'
last_name = 'Doe'

# Option 1
full_name = "#{first_name} #{last_name}"
puts full_name

# Option 2
full_name = first_name + ' ' + last_name
puts full_name

# Option 3
first_name.concat(' ', last_name)
puts first_name

# Option 4
first_name = 'John'
last_name.prepend(first_name, ' ')
puts last_name