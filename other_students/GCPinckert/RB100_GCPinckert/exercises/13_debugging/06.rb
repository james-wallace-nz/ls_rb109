# The given code produces a TypeError
# What is the problem and how can you fix it?

def get_quote(person)
  case person
  when 'Yoda'
    'Do. Or do not. There is no try.'
  when 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  when 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

=begin
The problem here is cause by Ruby's implicit return, which will always
return the last evaluated expression in the method. Because each of these
conditionals is a separate if statement, Ruby must evaluate every one. 
When we call the get_quote method and pass it the value 'Confucius', the 
last evaluated expression is the last if statement in the method, which
evaluates to false, and therefore returns no value, or rather, the value
`nil`. Because `nil` cannot be converted into a string to be passed
to puts, the code throws an error.

There are a few ways to fix this, but switching the chained if statements
to a case statement might be preferable. Because we are checking multiple
conditions against a single test case, it will simplify our code.
=end