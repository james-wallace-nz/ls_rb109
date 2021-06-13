# 1.

count = 1

loop do
  type = count.odd? ? 'odd' : 'even'
  puts "#{count} is #{type}!"
  count += 1
  break if count > 5
end


# # 2.

loop do
  number = rand(100)
  puts number
  break if (0..10).include?(number)
end


# # 3.

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts 'The loop was processed!'
    break
  end
else
  puts "The loop wasn't processed!"
end


# # 4.

# # loop do
# #   puts 'What does 2 + 2 equal?'
# #   answer = gets.chomp.to_i
# #   break if answer == 4
# #   puts 'Wrong answer. Try again!!'
# # end
# # puts "That's correct"


# # 5.

# # numbers = []

# # loop do
# #   puts 'Enter any number:'
# #   input = gets.chomp.to_i
# #   numbers << input
# #   break if numbers.size == 5
# # end
# # puts numbers


# # 6.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end


# # 7.

5.times do |index|
  puts index
  break if index == 2
end


# # 8.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end


# 9.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  puts '5 was reached!'
  break
end

# 10.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
