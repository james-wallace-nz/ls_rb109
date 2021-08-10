x = { a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair
end

p x
=begin
- On `line 1` we call method `each_with_object on a hash object, and pass a `[]` as an
  argument as well as a `do..end` block with parameters `pair` and `array`
  - On `line 2` we call method `<<` on locar var. `array` and pass in as an argument
    the return value obtained after:
    - On `line 2` we call method last on local var `pair` which references an array object

- There is no output, the return value is an array object containing string objects
  `ant`, `bear`, and `cat`. This method demonstrates how method `each_with_object` works.
  The first block parameter references the key-value pair being iterated through, and the
  second parameter references the array object that was created (because we had `[]`
  as an argument to the method)
=end