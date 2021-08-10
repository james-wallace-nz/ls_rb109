# example case statement
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else 
  puts "a is neither5, nor 6"
end

=begin
How case statment differs from if
* only need to specify variable to test once (as argument to case)
* don't specifiy an equality condition on the individual when statement
=end

# save the result of a case statement into a variable
b = 5
answer = case a
when 5
  "b is 5"
when 6
  "b is 6"
else
  "b is neither 5 nor 6"
end

puts answer

# sometimes the case statement doesn't take an argument
c = 5
case
when c == 5
  puts "c is 5"
when c == 6
  puts "c is 6"
else
  puts "c is neither 5 nor 6"
end
# because no argument is provided, we must test each value with ==