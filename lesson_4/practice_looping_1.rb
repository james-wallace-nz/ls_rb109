# 1.

loop do
  puts 'Just keep printing...'
  break
end


# 2.

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'


# 3.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end


# 4.

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   # break if answer == 'yes'
# end


# 5.

say_hello = true
count = 1

while say_hello
  puts 'Hello!'
  count += 1
  if count > 5
    say_hello = false
  end
end



# 6.

numbers = []

while numbers.size < 5
  num = rand(0..99)
  numbers << num
  puts num
end



# 7.

count = 1

until count == 11
  puts count
  count += 1
end


# 8.

numbers = [7, 9, 13, 25, 18]
count = 0
until count == numbers.size
  puts numbers[count]
  count += 1
end


# 9.

for i in 1..100
  puts i if i.odd?
end


# 10.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "#Hello, #{friend}!"
end