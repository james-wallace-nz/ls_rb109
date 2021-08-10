words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array

=begin
- The output of this code will be: [false, true, false, false, true]
- The return value of this code is an array object that contains boolean objects
  within it
- This is demonstrating how method `map` works:

  - The reason why we are returning an array object with boolean objects within it
    is due to what happens on `line 4`
    - On `line 4` we are calling method `start_with?` on local var `word` and passing
      in string object `t` as an argument. This will return a boolean value depending on
      whether or not the integer object referenced by local var `word` starts with letter
      `t`.
    - Method `map` takes whatever the return value of the block is, and on each iteration
      the return value of the block is either boolean object `true` or `false`. Which
      is why we obtain the output indicated in `line 10`
=end