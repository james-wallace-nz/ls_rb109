def count_down(number)
  puts number
  if number > 0
    number -= 1
    count_down(number)
  end
end

count_down(10)