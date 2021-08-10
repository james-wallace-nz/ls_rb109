def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names

=begin
- On `lines 1-3` we are defining method `add_name` with two parameters `arr` and `name`
- On `line 5` local var `names` is initialized and assigned to an array containing
  string objects `bob` and `kim`
- On `line 6` method `add_name` is invoked and local var `names` and string object `jim`
  are passed in as arguments
  
  - On `line 2` method `<<` is called on local var `arr` and local var `name` is passed
    in as an argument. This mutates the object since `<<` is a mutating method, meaning
    variable `names` on the main scope was effectively mutated
  - On `line 2` as well, local var `arr` is re-assigned to the return value of
    calling `<<` on local var `arr` and passing `name` as an argument. The return value
    of this still points to the same object `arr` was pointing to originally.
    
- On `line 7` we invoke method `puts` and pass in `names` as an argument
  - Output is bob, kim, jim (in different lines) since the original object was mutated
    on line 2
  - Return value is `nil`
=end