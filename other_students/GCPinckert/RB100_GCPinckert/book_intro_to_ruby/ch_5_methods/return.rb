# Print a returned value to the console
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# Explicitly return a value with the return keyword
# Break out of the method before it is complete
def add_five(number)
  return number + 5 # returns the result of this expression
  number + 4 # this line never runs
end

returned_value = add_five(4)
puts returned_value

def just_assignment(number)
  foo = number + 3
end

puts "What's returned by the just_assignment method?"
puts just_assignment(2)