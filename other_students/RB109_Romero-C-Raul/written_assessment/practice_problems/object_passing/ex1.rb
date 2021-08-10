a = "hi there"
b = a
a = "not here"
p a
p b
=begin

- In `line 1` we initialize local variable `a` and assign it to string object
  `hi there`
- In `line 2` we initialize local variable `a` and assign it to the string object
  that local var. `a` is referencing
- In `line 3` local var. `a` is re-assigned to string object `not there`

- Local var `a` is pointing to string object `not there`
- Local var `b` is pointing to string object `hi there`
=end