a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end

=begin
- On `line 1` we initialize local var `a` and assign it to string object `hello`
- On `line 3` we use a conditional statement `if` and pass in local var `a` as an argument.
  if the conditional statement evaluates to true then:
  - On `line 4` we invoke method `puts` and pass in string object `Hello is truthy' as an
    argument. This is what happens because local variable `a` references a `truthy` object,
    which evaluates to true

- Output is `Hello is truthy` and return value is `nil`

=end