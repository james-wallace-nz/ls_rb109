array = [1, 2, 3, 4, 5]

return_val = array.select do |num|
   puts num if num.odd?
end

p return_val

=begin
- On `line 1` we initialize local var. `array` and assign it to an array object
  that contains integer objects `1` through `5`
  
- On `line 3` we call method select on local var. `array` and pass in a `do..end` block
  as an argument with parameter `num`
  - On `line 4`, we have a conditional statement: if calling method `odd?` on local var. 
  `num` evaluates to `true` then:
    - On `line 4` we invoke method `puts` and pass in `num` as an argument

- The output of this code will be: 1, 2, and 5 
- The return value will be an empty array. This is demonstrating how the method `select` 
  works. Since the return value of the block throught each iteration never evaluated
  to `true`, then method `select` didn't add any elements to the new array. So we end up
  with an empty array as a return value from calling method `select` on local var. `array`

=end