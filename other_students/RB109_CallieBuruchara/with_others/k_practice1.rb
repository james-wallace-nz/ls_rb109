# input: 6 positive integers (no floats)
# --> input is retrieved through #gets (not through a method)
# --> have to ask for 6 integers

# output: 'The number (6th number) does/not appear in [array of retrieved
# numbers]

# prompt for 1st number, and #gets integer (do this 5 times)
# each of the first 5 integers, put this into an array (result)
# prompt for the last number and receive it
# check if last number is in results array
# if it is? Say it is. 
# if it's not? Say it's not. 

result = []

puts "==> Enter the 1st number:"
result << gets.chomp.to_i

puts "==> Enter the 2nd number:"
result << gets.chomp.to_i

puts "==> Enter the 3rd number:"
result << gets.chomp.to_i

puts "==> Enter the 4th number:"
result << gets.chomp.to_i

puts "==> Enter the 5th number:"
result << gets.chomp.to_i

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if result.include?(last_number)
  puts "The number #{last_number} appears in #{result}."
else
  puts "The number #{last_number} does not appear in #{result}."
end

