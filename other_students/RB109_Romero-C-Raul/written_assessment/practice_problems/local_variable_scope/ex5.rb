def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

=begin
- On `lines 1-4` we are defining method `greetings` with one parameter `str`
- On line 6, we are initializing local variable `word` and assigning it to 
  string object `hello`
  
- On line 8, we are invoking method `greetings` and passing in as an argument
  local variable `word`

- On line 2, we are invoking method `puts` and passing in as an argument local var.
  `str`, which is referencing the same object local variable `word` in the outer
  scope is referencing
- On line 3, we invoke method `puts` and pass in as an argument string object `Goodbye`

- Output when invoking method `greetings` and passing in local var. `word` as an 
  argument has an output of `Hello` and `Goodbye` and returns the value `nil`
  
- This is demonstrating the concept of variable scope, because it shows that in order
  for the method definition to access an outside variable it must be passed as an argument
  to the method
=end