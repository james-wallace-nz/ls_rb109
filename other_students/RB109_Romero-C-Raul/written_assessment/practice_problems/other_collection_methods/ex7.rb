p ({ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end)


=begin

- On `line 1` we call method `each_with_object` on a hash object and pass in as an argument
  `{}` as well as a `do..end` block with parameters `key`, `value`, and `hash`
  - On `line 2` we call method `[]=` on local var `hash` and pass in as arguments
    local variables `value` and `key`
    
- There is no output
- The return value is a hash object: {"ant"=>:a, "bear"=>:b, "cat"=>:c}

=end