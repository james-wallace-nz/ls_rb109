def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s
p t

=begin
- After method fix(s) is invoked:
- Local var `s` is referencing string object "helloxyz"
- Local var `t` is referencing string object  "HELLOXYZ!"

- On `lines 1-5` we define method `fix` with one parameter `value`
  - Local var `value`, which is pointing to the same object referenced by local var.
    `s`, has its object referenced mutated after method `<<` was called on it, and 
    passed `xyz` as a reference
  - On `line 3` local var. `value` is re assigned, to another string object, so any
    mutation after this line won't affect the string object referenced by local var `s`

- This is demonstrating the concept of object mutability, the object ref. by local var. 
  `s` is mutated up until local variable `value` starts pointing to a different string
  object
=end
