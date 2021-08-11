if true
  a = 10
end
puts a

while true
  b = 10
  break
end
puts b

for i in 1..5 do
  c = 10
end
puts c

loop do
  d = 10
  break
end
puts d

# `if/else` statements, `while` loops, and `for` loops do not create new variable scopes
# `loop` is a method and DOES create a new variable scope