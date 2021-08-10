=begin
Modify 06_passwords.rb such that it also requires a user name. The 
program should solicit both the user name and the password, then validate
both, and issue a generic error message if one or both are incorrect;
the error message should not tell the user which one is incorrect.
=end

PASSWORD = "WhoKnows"
USER_NAME = "johnqdoe"

loop do
  puts "Please enter your username:"
  name_try = gets.chomp
  puts "Please enter your password:"
  password_try = gets.chomp
  break if password_try == PASSWORD && name_try == USER_NAME
  puts "Invalid username and/or password!"
end

puts "Welcome!"