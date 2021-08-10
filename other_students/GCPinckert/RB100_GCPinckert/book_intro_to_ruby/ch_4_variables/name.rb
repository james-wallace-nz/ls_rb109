#ex 4:

# get user's first name
print "What's your first name? "
first_name = gets.chomp

# get user's last name
print "What's your last name? "
last_name = gets.chomp

# print full name all at once
puts "Hello #{first_name + last_name}!"

# ex 3: print user's name 10 times

10.times { puts "#{first_name} #{last_name}"}