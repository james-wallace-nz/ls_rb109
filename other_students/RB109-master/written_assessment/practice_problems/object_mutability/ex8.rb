a = %w(a b c)
a[1] = '-'
p a

=begin
- On `line 1` we initialize local variable `a` and assign it to an array object containing
  string objects `a`, `b`, and `c`.
- On `line 2` we call method `[]=` on local variable `a` and pass in as arguments 
  integer object `1` and string object `-`. 
  `[]` is a mutating method, and the value of `1` within the brackets
  represents the index value of the element that will be re-assigned within the array.

- On `line 3` we invoke method `p` 
  - Ouput is `["a", "-", "c"]`
  - Return is `["a", "-", "c"]`
- This program demonstrates the concept of object mutability on the array level,
  using element assignment
=end