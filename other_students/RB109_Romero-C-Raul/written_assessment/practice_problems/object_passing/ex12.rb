arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2

=begin
- On `line 1` local var `arr1` is initialized and assigned to an array object that contains
  string object elements `a`, b`, and `c`
- On `line 2` we are initializing local variable `arr2` and assigning it to:
  - On `line 2` we are called method `dup` on local var `arr1`
  - `dup` makes a shallow copy of the array object referenced by `arr1`, meaning the
    array object itself is duplicated (different object id) but the elements within
    that duplicated array are still referencing the same objects
- On `line 3` method `map!` is called on local var `arr2` with a `do block` passed in
  as an argument with block parameter `char`
    - This will mutate the array object that `arr2` is referencing, 
      but not the objects being referenced within it

- On `line 7`, invoking `puts` and passing `arr1` as an argument will output
  - a, b, c. This is because mutating method `map!` was called on the array level,
    so the objects referenced within the array were not mutated.
- On `line 8`, invoking `puts` and passing `arr2` as an argument will output
  - A, B , C. 
- Concept demonstrates here is variables as pointers

- Return value for both `puts` invocatins is nil

=end