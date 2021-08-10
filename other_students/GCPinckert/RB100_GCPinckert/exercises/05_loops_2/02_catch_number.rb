=begin
Modify the following code so the loop stops if number is equal to
or between 0 and 10.

loop do
  number = rand(100)
  puts number
end
=end

loop do
  number = rand(100)
  puts number
  if number >= 0 && number <= 10
    break
  end
end
