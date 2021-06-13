num = 3

num = 2 * num

=begin
- On `line 1`, local variable `num` is initialized and assigned to integer object `3`
- On `line 3`, local var `num` is re-assigned to the return value obtained after
  calling method `*` on integer object `2` and passing local var `num` as an argument

- Local variable `num` will point to integer object `6`.
- This demonstrates the concept of object mutability, showing that integer objects
  are not capable of being mutated. 

=end