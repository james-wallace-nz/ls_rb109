animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
=begin
- Program will output `dog` and return `nil`

- In line 1, we initialize local variable `animal` and assign it to string object
  `dog`
- In line 3, we call method `loop` and pass in as an argument a `do..end` block
  with parameter `animal`
  - Since the block parameter shares the same name with a variable in the outer scope,
    the inner scope will not be able to access any variable that shares that same
    name as the parameter in the outer scope ( this is var. shadowing)
    - In line 4, we re-assign local variable `animal` to string object `cat`, but this
      does not re-assign local variable `animal` in the outside scope
    - On line 5, we use keyword `break` to break out of the loop.
    
- In line 8, we invoke method `puts` and pass in local variable `animal` as an 
  argument. This outputs `dog` and returns nil. This is demonstrating the concept of 
  variable shadowing, since `animal` was not re-assgined 
  to `cat`, due to the reasons explained above.
=end