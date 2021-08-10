=begin
Write a program that requests two integers from the user, adds them
together, and then displays the result. Furthermore, insist that one
of the integers be positive, and one negative; however, the order in
which the two integers are entered does not matter. 

Do not check for the positive/negative requirement until both integers
are entered, and start over if the requirement is not met.
=end

# method provided to validate input integers
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

# avoid repeating input validation, create method
def get_valid_int
  loop do
    puts "Please enter a positive or negative integer:"
    num = gets.chomp
    return num.to_i if valid_number?(num)
    puts "Invalid input. Please enter a non-zero integer:"
  end
end

# initialize variables in outside scope
int_a = nil
int_b = nil

# loop to validate input together
loop do
  int_a = get_valid_int
  int_b = get_valid_int

  break unless (int_a > 0 && int_b > 0) || (int_a < 0 && int_b < 0)
  puts "One integer must be positive, one must be negative."
  puts "Please start over."
end

puts "#{int_a} + #{int_b} = #{int_a + int_b}"