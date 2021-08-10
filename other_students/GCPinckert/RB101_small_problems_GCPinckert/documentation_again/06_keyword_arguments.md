What does the given code print?
```ruby
5.step(to: 10, by: 3) { |value| puts value }
```

Documentation: https://ruby-doc.org/core-3.0.0/Numeric.html#method-i-step

The code will output:
```ruby
# => 5
# => 8
```
Here we are calling the `Numeric#step` method on the integer 5. The arguments given, step (`3`) and limit (`10`) need the keyword symbols `:to` and `:by` because we are giving the arguments out of the recommended order. The method starts at the calling object (here, the integer `5`) and passes that value to the given block. So, we output `5`. Next, we increment by `step`, which in this case is the integer `3`. Now our value is `8`. The method checks to make sure that value is less than the argument given for `limit`, or in this case `10`. `8 < 10` evaluates to true, so `8` is passed to the block, and output to the user. Incrementing by `3` again, we get the value `11`. `11 < 10` evaluates to false, so the value does not get passed to the block and the loop completes. 