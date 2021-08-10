def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
p test(test_str)

puts test_str

=begin
- On `lines 1-4`, we are defining method `test` with one parameter `str`

- On `line 6` we are initializing local variable `test_str` and assigning it to string
  object `Written Assessment`

- On line 7 we are invoking method `test` and passing local var `test_str` as an argument
  - In line 2, local var `str` (which is pointing to the same object that was passed
    as an argument to the method) is being re-assigned to the return value obtained
    after calling method `+` on local var `str` and passing in as an argument
    string object `!`
  - In line 3, local var `str` is mutated when method `downcase!` is called on it
  - The return value of this method will be "written assessment!"
  
- On line 9, method `puts` is being called on local variable `test_str`
  - Output is `Written Assessment`, local var `test_str` was not mutated since,
    the mutation came after the local variable `str` within the method definition 
    was re-assigned to a different string object. This is demonstrating the concept of 
    variables as pointers
=end