=begin
Write a program that displays a welcome message, but only after the
user enters the correct password, where the password is a string
that is defined by a constant in your program. Keep asking for the
password until the user enters the right password. 
=end

PASSWORD = "WhoKnows"

loop do
  puts "Please enter your password: "
  password_usr = gets.chomp
  break if password_usr == PASSWORD
  puts "Invalid password!"
end

puts "Welcome!"