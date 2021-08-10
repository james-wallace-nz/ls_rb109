def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)


p s
p t
p s.object_id
p t.object_id

=begin
- Local var. `s` is pointing to string object "hello"
- Local var. `t` is pointing to string object "HELLO!" which is a different object
  to the one local variable `s` is referencing

- Within the method definition of the method `fix`, local var `value`, which was 
  originally pointing to the same object that local var `s` is referencing, was re-assigned
  on `line 2`. Because of this, the mutating method `concat` called on `line 3` did not
  actually mutate the string object local var. `a` is referencing.
- This demonstrates the concept of object mutability, local variable `s` was not mutated
  since local var `value` within the method was pointing to a different string object
=end