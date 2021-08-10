def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names

=begin
- On `lines 1-3` we define method `add_name` with two parameters `arr` and `name`
- On `line 5` we initialize local variable `names` and assign it to an array object
  that contains string objects `bob` and kim`
- On `line 6` we invoke method `add_name` and pass in as an argument local variable
  `names` and string object `jim`
 - On `line 2` we re-assigned local variable `arr` to the return value of calling method
  `+` on local var `arr` and passing in as an argument an array that contains
  local variable `name` within it
  
- On `line 7` we invoke method `puts` and pass in local variable `names` as an argument
  - The output will be `bob` and `kim` (same as when it was initialized) because
    method `+` is non mutating. This demonstrates the concept of object mutability.
=end