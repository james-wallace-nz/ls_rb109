x = { a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end

p x

=begin
- On `line 1` we call method `all?` on a hash object and pass in a `do..end` block
  as an argument with parameters `key` and `value`
  - On `line 2` method `length` is called on local var `value`. 
  - On `line 2` method `>=` is called on the return value obtained from calling method
    `length` and local var `value` and integer object `3` is passed in as an argument.
    
- There is no output, but the return value is boolean object `true`. This is because
  `any?` looks at all the return values of the block, if all of them evaluate to true,
  then method `all?` returns `true` which happens in this case

=end