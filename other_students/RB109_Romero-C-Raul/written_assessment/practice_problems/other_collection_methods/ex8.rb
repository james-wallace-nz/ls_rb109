odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even

=begin
- On `line 1` we initialize local variables `odd` and `even` and assign them to the
  return value obtained by calling the method `partition` on an array object
  and passing in as an argument a `do..end` block with parameter `num`
  - On `line 2` we call method `odd?` on local var `num`

- On `line 5` we invoke method `p` and pass in local var `odd` as an argument
  - Output is: [1, 3]
  - Return is: An array object that contains interger objects `1` and `3` within it

- On `line 5` we invoke method `p` and pas in local var `even` as an argument
  - Output is:[2]
  - Return is: An array object that contains integer object `2` within it

=end