Run the following code in irb...
```ruby
s = 'abc'
puts s.public_methods.inspect
```
How would you modify the code to print just the public methods defined or overridden by the `String` class? That is, the list should exclude all the members that are only defined in `Object`, `BasicObject`, and `Kernel`. 

`s.public_methods.inspect` gives us an array consisting of all the names of public methods available to `String` (as symbols). 

Documentation: https://ruby-doc.org/core-3.0.0/Object.html#method-i-public_methods

The `Object#public_methods` method takes an optional argument of a boolean value that is set to true by default. When this argument is set to true, `public_methods` will return all public methods available to the calling object, including those inherited from its parent class. Set the argument to false in order to limit the public methods listed to those defined within the specific class of the object. 
```ruby
s = 'abc'
puts s.public_methods(false).inspect
```