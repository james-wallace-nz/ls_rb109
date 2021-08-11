# Method invocation with a block
a = 5
10.times do |n|
  a = 3
end
puts a

# Method definition
a = 5
def some_method(number)
  number = 3
  a = 3
end
some_method(a)
puts a