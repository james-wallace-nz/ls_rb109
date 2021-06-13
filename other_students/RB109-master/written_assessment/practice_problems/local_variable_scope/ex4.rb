def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

p example('hello')

=begin
- On `lines 1 - 8` we are defining method `example` with one parameter `str`

- On `line 10` we invoke method `example` and pass in as an argument the string
  object `hello`
  
- On line 2, we initialize local variable `i` and assign it to integer object `3`
- On line 3, we invoke method `loop` and pass in a `do..end` block as an argument
  - On line 5, we have an example of ruby synctactical sugar which represents
    i = i - 1
    - We are re-assigning local variable `i` to the return value that is obtained
      when invoking method `-` on local var. `i` and passign `1` as an argument
  
  - On line 6, we are using keyword `break` to break out of the look when the
    return value obtained when calling method `==` on local var. `i` and passing
    `0` as an argument returns true
    
- Running this code will output `hello` three times and return value nil
- We are demonstrating the concept of local variable scope by modifying local variable
  `i` within the `do..end` block of the `loop` method
  
=end