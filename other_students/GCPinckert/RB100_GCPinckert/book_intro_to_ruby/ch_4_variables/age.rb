print "How old are you? "
age = gets.chomp.to_i

years_to_add = [10, 20, 30, 40]
years_to_add.each do |years|
  puts "In #{years} years you will be #{age + years}."
end