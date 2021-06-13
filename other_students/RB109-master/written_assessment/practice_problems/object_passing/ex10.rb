def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 

=begin
- On `lines 1-3` method `cap` is defined with one parameter `str`

- On `line 5` local var `name` is initialized and assigned to string object `jim`
- On `line 6` method `cap` is invoked and local var `name` is passed in as an argument
  - Within method def, local var `str` is pointing to the same object local variable `name`
    is pointing to.
  - On `line 2` method `capitalize!` is called on local variable `str`. `capitalize!` is a 
    mutating method, and this mutates the string object local var `str` is referencing, as 
    well as the object local variable `name`, in the main scope, is referencing.
    
  - On `line 7` we invoke method `puts` and pass in as an argument local var `name`
    - Output is `Jim` and return value is `nil`
  - This demonstrates the concept of variables as pointers. 


=end