a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b

=begin

- In line 9, we are invoking method `puts` and passing local var. `a` as an argument
  - Output is 4 and return is nil
  
  - This is demonstrating the concept of variable shadowing because:
    - On line 4, we call method `times` on integer object `2` and pass in as an 
      argument a `do..end` block with parameter `a`.
      - Local variable `a` is initialized when the block is called, which references
        a different integer object to the variable `a` in the ouside scope.
      - On line 6, invoking `puts` with local variable `a` as an argument will 
        output `5` and return nil (two times)
  
  - In line 9, we are invoking method `puts` and passing local var. `a` as an argument
    - Output is 4 because there was no re-assignment within the block, because the
      block paremeter had the same name as a variable in the outside scope, and thus
      prevented re-assignment within the `do..end` block
      
- In line 10, we are invoking method `puts` and passing local var. `b` as an argument
  - Output is 2 and return is nil
=end