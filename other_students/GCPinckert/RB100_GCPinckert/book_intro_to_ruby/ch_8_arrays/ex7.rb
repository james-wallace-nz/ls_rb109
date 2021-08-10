=begin
Exercise 7:
Use the each_with_index method to iterate through an array of your
creation that prints each index and value of the array.
=end

rhymes = ["hero", "fun", "you", "me", "more", "alive"]

rhymes.each_with_index { |rhyme, idx| puts "#{idx} => #{rhyme}"}