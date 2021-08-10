Given the following code...
  ```ruby
  a = [1, 4, 8, 11, 15, 19]
  ```
How would you search this Array to find the first element whose value exceeds 8?
Note that the `Array#bsearch` method is used to search ordered arrays more quickly than `#find` and `#select`.

You would want to use `#bsearch` in find-minimum mode. To do so, you pass the method a block that returns `true` or `false`, and the method will return the first element it encounters for which the block returns `true`. We want to ensure that we capture the first element whose value exceeds 8, so we build our block such that elements which evaluate to `false` (within the block) come before all the elements which evaluate to `true` (assuming we iterate through the whole array). 

  ```ruby
  a.bsearch { |element| element > 8 }   # => 11
  ```
