arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"

=begin
- On line 1, we initialize local variable `arr` and assign it to an array object
  that contains integer objects from 1..4
  
- On line 3, we initialize local variable `counter` and assign it to integer object `0`
- On line 4, we initialize local variable `sum` and assign it to integer object `0`

- On line 6, we invoke the method `loop` and pass in as an argument a `do..end` block
  - On line 7, we have an example of ruby syntactical sugar
  - What is represented is the same as sum = sum + arr[counter]
  - In line 7, local var. sum is being re-assign to the return value of calling
    method `[]` on local var. `arr` and passing in as an argument local var. counter
  
  - In line 8, we are re-assigning local var. `counter` to the return value of
    calling method `+` on counter and passing in as an argument integer object `1`
  
  - On line 9, we use keyword `break` to break out of the loop when local var. `counter`
    is equal to the return value obtained when invoking method `size` on local var. `arr`

- On line 12, we are invoking method `puts` and passing in as an argument a string
  interpolation that is referencing the object that local var. sum is referencing
  
- This is demonstrating the concept of variable scope, since it shows that local 
  variables initialized outside an outer scope can be accessed in the inner scope
=end