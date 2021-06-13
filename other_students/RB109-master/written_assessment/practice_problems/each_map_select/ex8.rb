arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array

=begin
- Output of this code will be: [false, true, true, true, true, true, true, true, true, true]
- Return value will be an array object that contains boolean objects 
- This code is demonstrating how method map works.

  - The reason why we are returning an array object containing boolean values, is because
    of what is happening on `line 4`
    - On `line 4` method `>` is being called on local var `n` (which represents the integer
      object being iterated through) and integer object `1` is being passed as an argument.
      - The return value of calling method `>` will always be either boolean object
        `true` or `false`, meaning that the blocks return value will always be a boolean
        object. `map` takes all these boolean objects and adds them to a new array, giving
        us the output and return values described on `lines 9 - 10`
=end