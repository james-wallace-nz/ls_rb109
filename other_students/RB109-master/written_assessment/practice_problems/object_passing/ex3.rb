a = [1, 2, 3, 3]
b = a
c = a.uniq

p a
p b
p c

=begin

- In `line 1` we are initializing local var `a` and assigning it to an array object
  that contains integer objects 1, 2, 3, and 3
- In `line 2` we are initializing local var `b` and assigning to the same array object
  local var `a` is referencing
- In line 3, we are calling method `uniq` on local var `a`, and assigning its return value
  to local variable `c` after it is initialized
  
- Local variable `a` points to array object [1, 2, 3, 3]
- Local variable `b` points to array object [1, 2, 3, 3]
- Local variable `c` points to array object [1, 2, 3]

- This is demonstrating the concept of variables as pointers
- If the last line had been calling method `uniq!` then all 3 variables would have been mutated,
  since they point to the same string object
=end