def fix(value)
 value[1] = 'x'
 value 
end

s = 'abc'
t = fix(s)

p s
p t

=begin
- On `lines 1 - 4` method `fix` is defined with one parameter `value`
- On `line 6` local var `s` is initialized and assigned to string object `abc`
- On `line 7` local var `t` is initialized and assigned to the return value obtained
  from invoking method `fix` and passing local var `s` as an argument
  - On `line 2` we have element assignment, which is mutating the string object
    being referenced by local var `value` and variable `s` 
  
- Local variable `s` is pointing to string object `axc`
- Local variable `t` is also pointing to string object `axc`, demonstrating the concept
  of object mutability
    


=end