=begin
Write a method that takes two arguments, a string and a positive integer,
and prints the string as many times as the integer indicates

Example: repeat('Hello', 3)
Expected output:
  => Hello
  => Hello
  => Hello
=end

def repeat(string, times_to_print)
  if times_to_print < 1
    puts 'Error: Please use a positive integer'
  else
    times_to_print.times { puts string }
  end
end

repeat('Hello', 3)
repeat('Hello', -1)
repeat('Hello', 0)
repeat('Hello', 10)
