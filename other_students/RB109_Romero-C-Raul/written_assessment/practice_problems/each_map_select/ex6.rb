arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }

=begin
- The output of this code will be numbers `1` through `10` on different lines
- The return value will be the array object local var `arr` is referencing
- This code demonstrates how method `each` works:
  
  - On `line 1` we initialize local var `arr` and assign it to an array object
    that contains integer objects `1` through `10`
  
  - On `line 3` we call method `each` on local var `arr` and pass in a `{}` block as an
    argument
    - Within the block we have parameter `n` and invoke method `puts` and pass local var.
      `n` as an argument. 
      - Due to what happens in `line 3` we obtain the output indicated on line `10`
      - The return value is the same array object `arr` is referencing because
        that is what method `each` is designed to do. Method `each` does not care what 
        the return value of the block is. It will always return the same array object the
        method was called on.
=end