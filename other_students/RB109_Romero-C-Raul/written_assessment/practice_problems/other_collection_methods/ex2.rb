x = { a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

p x

=begin
- On `line 1` we are calling method `any?` on a hash object and passing in a `do..end`
  block with parameters `key` and `value` as an argument.
  - On `line 2` we call method `size` on local var `value` and:
    - On `line 2` we cann method `>` on the return value obtained from calling method
      `size` on var `value` and pass in as an argument integer object `4`. 
      
- The return value of this code is boolean object `false`. Method `any?` looks at the
  return values of the block, and if any of them evaluated to true, then the method `any?`
  returns `true`, which did not happen in this case; none of the values within the
  hash had a length greater than 4
=end