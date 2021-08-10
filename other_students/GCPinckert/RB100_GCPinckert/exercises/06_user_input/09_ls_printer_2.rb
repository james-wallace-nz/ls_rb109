=begin
Modify 05_ls_printer_1.rb such that it repeats itself after each input / print iteration, asking for a new number each time through. The
program should keep running until the user enters `q` or `Q`
=end


loop do
  puts "How many lines of output would you like?" \
       "Enter a number >= 3. Q to quit."
  lines = gets.chomp
  break if lines.downcase == 'q'
  if lines.to_i < 3
    puts "That's not enough lines."
  else
    lines.to_i.times { puts "Launch School is the best!" }
  end
end