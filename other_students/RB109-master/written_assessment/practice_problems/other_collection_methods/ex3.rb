[1, 2, 3].all? do |num|
  num > 2
end

=begin
- On `line 1` we call method `all?` on an array object (that contains integer objects
  `1`, `2`, and `3`) and pass in as an argument a `do..end` block with parameter `num`
  - On `line 2` we call method `>` on local var `num` and pass in integer object `2`
    as an argument.

- There is no output, the return value of this code is boolean object false. This is 
  because method `all?` looks at all the return values from the `do..end` block. If all
  return values evaluated to true, then method `all?` returns true, which was not 
  the case in this example; Block return value on first iteration is boolean object `false`
=end