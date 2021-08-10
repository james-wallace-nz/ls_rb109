Given the following code...
```ruby
a = [5, 9, 3, 11]
puts a.min
```
Change the code to print the two smallest values in the array

Documentation: https://ruby-doc.org/core-3.0.0/Array.html#method-i-min

Here we are using the `Array#min` method, which by default (if no arguments are given) will return the smallest evaluated element from the calling array. You can provide an optional argument specifying the number of elements to be returned in a new array. 

```ruby
a = [5, 9, 3, 11]
puts a.min(2).inspect
# => [3, 5]
```