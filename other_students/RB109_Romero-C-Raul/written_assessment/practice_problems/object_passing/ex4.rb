def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)

=begin
- In `lines 1-3` we are defining method `test` with one parameter `b`

- In `line 5` we are initializing local var `a` and assigning to it an array object
  that contains string objects `a, b, and c`

- In line 6, we are invoking method `test` and passing in as an argument local var `a`

- In `line 2` we are calling method `map` on local variable `b`, and passing a `{}` block 
  as an argument
  - Since map is not a destructive method, it wont mutate the object local var `b` is 
    referencing, which is the same object local var `a` is referencing. This demonstrates
    the concept of variables as pointers
    
- Calling the method on line 6 will return a new array object: 
  ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
=end