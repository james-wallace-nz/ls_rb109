=begin
Write a program that obtains two Integers from the user, then prints
the result of dividing the first by the second. The second number
must not be 0, and both numbers can be validated using the given
method.
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# initialize variables in outside scope
numerator = nil
denominator = nil

# validate input for numerator
loop do 
  puts "Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Please enter an integer."
end

# validate input for denominator
loop do
  puts "Please enter the denominator:"
  denominator = gets.chomp
  if denominator == '0'
    puts "Invalid input. Denominator cannot be 0."
    next
  end
  break if valid_number?(denominator)
  puts "Invalid input. Only integers are allowed."
end

puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"

