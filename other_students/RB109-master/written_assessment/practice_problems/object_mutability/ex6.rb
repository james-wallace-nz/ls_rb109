def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a

=begin
- On `lines 1 -3` method `amethod` is defined with one parameter `string`
- On `line 5` local var `a` is initialized and assigned to string object `hello`
- On `line 6` method `amethod` is invoked and local var `a` is passed in as an 
  argument
  
  - On `line 2` method `<<` is called on local var `string` (which is pointing to the
    same object variable `a` is referencing) and ` world` is passed in as an argument.
    This effectively mutates the object being referenced by variable `string` and 
    variable `s` in the main scope
    
- On `line 8` method `p` is invoked and local var `a` is passed as an argument
  - Output is `hello world`
  - Output is `nil`
- This demonstrates the concept of object mutability. 

=end
