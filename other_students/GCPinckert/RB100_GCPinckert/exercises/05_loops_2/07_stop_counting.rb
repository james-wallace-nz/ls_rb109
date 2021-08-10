=begin
The method below counts from 0 to 4. Modify the block so it prints the
current number and stops iterating when the current number = 2. 
=end

5.times do |index|
  puts index
  break if index == 2
end

=begin
How many values will be printed in the following code?

5.times do |index|
  puts index
  break if index == 4
end

Answer: 5 values will be printed. 0, 1, 2, 3 and 4.

How many values will be printed in the following code?

5.times do |index|
  puts index
  break if index < 7
end

Answer: Only one value will be printed, 0, before the break statement is
evaluated. When the break statment is evaluated it will be true, and 
the loop will break.
=end