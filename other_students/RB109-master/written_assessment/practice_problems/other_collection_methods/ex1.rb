x = [1, 2, 3].any? do |num|
  num > 2
end

p x

=begin
- On `line 1` we call method `any?` on an array object (that contains integer objects `1`,
  `2`, and `3`) and pass in a `do..end` block with parameter `num` as an argument
  - On `line 2` we call method `>` on local var. `num` and pass in integer object `2`
    as an argument.
    
- This code will have no output, but it will return boolean object `true`
  - This is because method `any?` will return true if any of the block's return
    values is true. The block evaluated to true once when local var `num` is 
    referencing integer object `3`
=end