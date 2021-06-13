animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

=begin
- On line 9, invoking method `puts` and passing local variable `animal` as an argument:
  - Output: 'cat'
  - Return: nil
  
- On line 10, invoking method `puts` and passing local variable `var` as an argument:
  - This will give us an undefined local variable or method error, since we are tring
    to access a variable in the outer scope that was initalized in the inner scope:
    - On line 3, we are invoking method `loop` and passing a `do..end` block as an
      argument with parameter `_`
      - On line 5, we are initializng local var. `var` and assigning it to string object
        `ball`. This same variable is trying to be accessed in the outer scope, but it
        is not possible since it was initialized in the inner scope of the `do..end`
        block. This is demonstrating the concept of variable scope
=end