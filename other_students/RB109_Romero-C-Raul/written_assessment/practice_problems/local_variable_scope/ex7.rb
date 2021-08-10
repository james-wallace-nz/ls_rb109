a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a

=begin 
- On line '1', we initialize local var. `a` and assign it to string object `Bob`

- On `line 3`, we call method `times` on integer object `5` and pass as an argument
  a `do..end` block with parameter `x`
  - On line 4, we re-assign local variable `a` to string object `Bill`, and this is 
    done 5 times

- On line 7, we invoke method `p` and pass in as an argument local var. `a`
  - Output is 'Bill' and Return value is string object 'Bill'
  
- This demonstrates the concept of variable scope, since local var. `a` was initialized
  in the outer scope and was able to be accessed and re-assigned within the inner 
  scope of the `do..end` block

=end