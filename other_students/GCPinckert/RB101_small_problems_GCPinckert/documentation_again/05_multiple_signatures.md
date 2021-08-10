Given the following code...
```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```
What do each of the `puts` statements output?

1. Causes an error. Because the index provided to the method `fetch` is outside the bounds of the array, the program throws an IndexError. 

2. => `"beats me"`. Because we have provided the `fetch` method with the additional argument of a value to be returned in the case of the index being out of range. Because `7` here is out of the bounds of the array, the value passed to `puts` is the string `"beats me"`.

3. => `49`. Because we have provided `fetch` with a block as an argument, the block will get run should the index parameter be out of bounds. `7` here is larger than the array, so the block will get run, and the value it returns gets passed to the method `puts`. The argument `7` gets passed to the block, which squares it, and returns the value `49`, which is then output to the screen.