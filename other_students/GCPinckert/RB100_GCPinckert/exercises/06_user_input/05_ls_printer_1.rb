=begin
Write a program that prints "Launch School is the best!" repeatedly 
until a certain number of lines have been printed. The program should
obtain the number of lines from the user, and should insist that at 
least three lines are printed. 
=end

lines = nil

loop do
  puts "How many lines of output would you like? Enter a number >= 3."
  lines = gets.chomp.to_i
  break if lines >= 3
  puts "That's not enough lines."
end

lines.times { puts "Launch School is the best!" }