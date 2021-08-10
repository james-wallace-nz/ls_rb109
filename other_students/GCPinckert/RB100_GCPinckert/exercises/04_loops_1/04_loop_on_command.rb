=begin 
Loop On Command:
Modify the code below so the loop stops iterating when the user
inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end
=end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.downcase == 'yes'
end