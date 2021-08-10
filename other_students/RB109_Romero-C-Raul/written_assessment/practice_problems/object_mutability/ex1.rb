def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

p s.object_id
p t.object_id
=begin
- On `lines 1-5` we are defining method `fix` with one parameter `value`
- On `line 7` we are initializing local variable `s` and assigning it to string object
  `hello`
- On `line 8` we are initializing local var. `t` and assigning it to:
  - Within the `fix` method definition, local var. `value` is referencing the same object
    local variable `s` is pointing to
  - On `line 2` we invoke mutating method `upcase!` on local var. `value`
  - On `line 3` we are calling method `concat` (mutating) on local var. `value` 
  and passing in as an argument string object `!`
  - On `line 4` we reference local variable `value`
  
- Local variable `s` was mutated, and is pointing to string object `HELLO!`
- Local variable `t` is pointing to the same object local var `s` is referencing
- This is demonstrating the concept of object mutability
=end