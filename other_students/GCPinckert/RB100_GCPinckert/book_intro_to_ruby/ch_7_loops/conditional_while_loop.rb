# conditional while loop
x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

# using "next" -> jumps to next loop iteration
x = 0

while x <= 10
  if x == 3
    x += 1
    next            # will not print 3
  elsif x.odd?
    puts x
  end
  x += 1
end

# using "break" -> breaks out of loop entirely
x = 0

while x <= 10
  if x == 7
    break            # only prints up to 5
  elsif x.odd?
    puts x
  end
  x += 1
end
