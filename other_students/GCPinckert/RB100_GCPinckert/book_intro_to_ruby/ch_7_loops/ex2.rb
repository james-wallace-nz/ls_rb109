=begin
Exercise 2:

Write a while loop that takes input from the user, performs an
action, and only stops when the user types "STOP". Each loop
can get info from the user.
=end

go = ""

while go != "STOP" do
  puts "Please say 'go' or 'stop'"
  go = gets.chomp.upcase
  puts "Weeeeeee!"
end

