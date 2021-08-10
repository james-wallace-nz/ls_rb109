=begin
Print While:
Using a while loop, print 5 random numbers between 0 and 99. The code
below shows an example of how to begin solving this exercise.

numbers = []

while <condition>
  # ...
end
=end

numbers = []

i = 0
while i < 5
  # generate random number between 0 and 99 (inclusive?)
  num = rand(100)
  # append to array numbers
  numbers.push(num)
  i += 1
end

puts numbers

=begin
Can make the above simpler by setting the size of the array as the
while loop condition rather than creating a counter variable. Also,
chain the rand and push methods together to condense code.

numbers = []

while numbers.size < 5
  numbers.push(rand(100))
end

puts numbers
=end