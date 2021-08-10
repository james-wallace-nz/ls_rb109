=begin
Modify 03_print_something_1.rb such that it prints an error message for
any input that aren't 'y' or 'n', and then asks you to try again. 
Keep asking for a response until you have a valid 'y' or 'n' response. 
In addition, your program should allow both 'Y' and 'N' responses;
case sensitive input is generally a poor user interface choice.
=end

loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  if answer == 'y'
    puts "something"
    break
  elsif answer == 'n'
    break
  else
    puts "Invalid input! Please enter 'y' or 'n'."
  end
end