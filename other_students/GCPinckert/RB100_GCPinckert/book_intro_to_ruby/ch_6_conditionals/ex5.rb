=begin
Exercise 5:

When you run the following code you get an error message. Why do
you get this error and how do you fix it?


def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

When the above code gets run, you get a syntax error. This is because
in the method definition, both the if statement and the method
def need to finish with the keyword "end". The following code
will run without errors:
=end

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
