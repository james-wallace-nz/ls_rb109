=begin
Using the following code, write a method called `car` that takes two
arguments and prints a string containing all the values of both
arguments.

car('Toyota', 'Corolla')

Expected output:
Toyota Corolla
=end

def car (make, model)
  puts make + " " + model
end

car("Toyota", "Corolla")

=begin
If `puts` is removed from the method, the method will return the
concatenated string "Toyota Corolla", but will not automatically print
it to the console. We will have to add `puts` to the method invocation:

puts car("Toyota", "Corolla")

When `puts` is inside the method, the method will print "Toyota Corolla"
to the terminal but return the value `nil`
=end