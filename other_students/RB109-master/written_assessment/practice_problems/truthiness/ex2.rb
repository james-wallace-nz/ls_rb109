def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end

=begin
- On `lines 1 - 3` we define method `test` with no parameters

- On `line 5` we initialize local var. `test` and assign it to:
  - On `line 2` we invoke method `puts` and pass in string object `written assessment`
    as an argument. This outputs "written assessment" and returns `nil`.
  - Local var. `test` is assigned to object `nil`

- On `line 7` we have a conditional statement `if` and local var `var` is passed in as an 
  argument. If this expression evaluates to `true` then:
  - On `line 8` we call method `puts` and pass in `written assessment`, a string object,
    as an argument. Output is `written assessment` and return value is `nil`
  - If the conditional statement on `line 7` does not evaluate to true:
    - On `line 10` we call method `puts` and pass in string object `interview` as an argument.
    Output is `interview` and return value is `nil`

- This code outputs string 'interview' and returns `nil`, since the conditional
  statement on `line 7` does not evaluate to true due to local var. referencing object `nil`,
  which is a `falsey` value
=end