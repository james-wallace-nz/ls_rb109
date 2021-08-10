a = "hello"

x = [1, 2, 3].map { |num| a }

p x

=begin
- There is no output
- Return value is an array object containing string objects `hello`: 
  ["hello", "hello", "hello"]
- This is demonstrating how method `map` works:

  - An array object containing string objects `hello` within it is returned
    because of what is happening in `line 3`
    - On `line 3` we are calling method `map` on an array object (containing integer
      objects 1, 2, and 3) and passing in as an argument a `{}` block.
      - The block parameter is `num` and we are referencing the object local var. `a` 
        is pointing to (which is string object `hello`)
      - Since through every iteration the return value of the block is string object
        `hello`, `map` takes this return value and adds it to a new array. And this leads
        to the return value described in `lines 9 - 10`
=end
