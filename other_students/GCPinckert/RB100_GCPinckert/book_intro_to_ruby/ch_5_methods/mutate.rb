a = [1, 2, 3]

# Example of a method defintion that modifies its argument permanently
def mutate(array)
  array.pop
end

puts "This will demonstrate a method that mutates the caller."
p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
puts "\n"

# Because the .pop method MUTATES THE CALLER we have 
# permanently modified the local variable a
# even though a is outside the method def's scope. 

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

b = [4, 5, 6]

puts "This will demonstate a method that does NOT mutate the caller."
p "Before no_mutate method: #{b}"
no_mutate(b)
p "After no_mutate method: #{b}"
puts "\n"

# puts vs return

c = [7, 8, 9]

puts "This is the value of c: #{c}"
puts "This is what is returned by the mutate method: #{mutate(c)}"
puts "This is the value of c after the mutate method: #{c}"