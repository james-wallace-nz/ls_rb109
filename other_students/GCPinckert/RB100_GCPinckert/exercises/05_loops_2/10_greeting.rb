=begin
Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2
=end

def greeting(num)
  count = 0
  while count < num
    puts 'Hello!'
    count += 1
  end
end

number_of_greetings = 2

greeting(number_of_greetings)