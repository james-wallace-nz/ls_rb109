=begin
Control The Loop:
Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end
=end

# Solution 1, use a while loop

iterations = 1

while iterations < 6
  puts "Number of iterations = #{iterations}"
  iterations += 1
end

# Alternatively, you can add a conditional to the break statement
# as well as incrementing the variable iterations

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations > 4
  iterations +=1
end

# or

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end