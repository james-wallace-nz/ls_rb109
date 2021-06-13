arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented

=begin
- The output of this code will be [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
- The return value will be an array object that contains integer objects `2` through `11`
- This code is demonstrating how method `map` works
  
  - The way method `map` works, is that it takes whatever the return value of the block is,
    and adds it to a new array.
    - On `line 4` we can see that the return value of the block will be local var `n`
      (which is the current integer being iterated through) with method `+` being called
      on it and passing integer object `1` as an argument. This means that `map` will
      take the current number plus 1 and add it to a new array. This explains the output
      and returns values referenced on `lines 9 and 10` of my explanation
=end