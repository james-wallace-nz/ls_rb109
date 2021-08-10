def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s
p t

=begin
- On `lines 1- 4` we are defining method `fix` with one parameter `value`
- On `line 6` local var. `s` is initialized and assigned to string object `hello`
- On `line 7` local val. `t` is initialized and assigned to the return value obtained
  after invoking method `fix` and passing local var. `s` as a parameter
  - On `line 2` mutating method `upcase! is called on local variable `value`, which
    mutates the object local variable `s` is referencing
  - Local variable `value` is then re-assigned to the return value obtained from
    calling method `upcase! on local variable `value` (still same object as before)
  - On line 3, mutating method `concat` is called on local var. `value` and has its object
    mutated (this object is still being referenced by local var `s`)
    
- Local var `t` is pointing to string object 'HELLO!'
- Local var `s` is pointing to string object 'HELLO!', both variables are pointing to
  the same string object, demonstrating the concept of object mutability
=end