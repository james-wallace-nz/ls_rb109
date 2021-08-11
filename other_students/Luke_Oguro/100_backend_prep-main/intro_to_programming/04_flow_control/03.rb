puts "Enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "the number is below 0"
elsif 0 <= number && number <= 50
  puts "the number is between 0 and 50"
elsif 51 <= number && number <= 100
  puts "the number is between 51 and 100"
else
  puts "the number is above 100"
end