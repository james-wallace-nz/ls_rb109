# What will the given code print? Why?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

=begin
The code will print the number 1, which is the value of the last 
expression evaluated by the method (number = 1). Because the condition
will always evaluate to `true`, the else statement will never get run.
=end