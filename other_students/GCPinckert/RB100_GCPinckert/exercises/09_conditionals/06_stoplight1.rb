=begin
Using the given variable, write a case statement that prints "Go!" if
stoplight is 'green', "Slow down!" if stoplight is 'yellow', and 
"Stop!" if stoplight is 'red'.
=end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "Go!"
when 'red'
  puts "Stop!"
else
  puts "Slow down!"
end