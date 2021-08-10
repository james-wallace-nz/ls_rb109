Given the following code...
  ```ruby
  def my_method(a, b = 2, c = 3, d)
    p [a, b, c, d]
  end

  my_method(4, 5, 6)
  ```
What will the code print?

Documentation: 
- https://docs.ruby-lang.org/en/3.0.0/doc/syntax/methods_rdoc.html#label-Arguments
- https://docs.ruby-lang.org/en/3.0.0/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

When we define `my_method` we are giving it two optional arguments `b` and `c` by assigning default values for those parameters. Therefore, when we call it, we can leave out arguments for these two middle parameters. Here, we invoke the method with three arguments. The middle argument `5`, will get assigned to the first optional parameter, `b`, and the parameter `c` will be assigned it's default value. Therefore, when the method executes, it will output `[4, 5, 3, 6]`.