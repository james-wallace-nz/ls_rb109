def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 

=begin
- On `lines 1-3` method `change_name` is being defined with one parameter `name`
- On `line 5` local var `name` is initialized and assigned to string object `jim`

- On `line 6` method `change_name` is invoked and local var `name` is passed in as an
  argument
  - Within the method def scope, local variable `name` is referencing the same string object
    local var `name` in the main scope is referencing (string object `jim`). 
  - On `line 2` local var `name` is being re-assigned to string object `bob`
  
- On line 7, we invoke method `puts` and pass in local var `name` as an argument
  - Output is `jim` since the method did not mutate the object local variable `name`, in the
    main scope, is referencing. Within the method, local var `name` was merele re-assigned
- This is demonstrating the concept of variables as pointers
- Return value is nil

=end

