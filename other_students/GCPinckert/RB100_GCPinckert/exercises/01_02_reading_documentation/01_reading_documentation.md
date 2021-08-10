# Reading Documentation 1

1. The most complete [Ruby Documentation](https://ruby-doc.org/en)
2. You can find descriptions of keywords such as `while` [here](https://docs.ruby-lang.org/en/3.0.0/doc/keywords_rdoc.html), and a more detailed description of the `while` loop [here](https://docs.ruby-lang.org/en/3.0.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop).
3. A `while` loop returns `nil` unless `break` is used. If `break` is used, the loop will
return the result of the expression evaluated by `break`.
4. The [break documentation](https://docs.ruby-lang.org/en/3.0.0/doc/syntax/control_expressions_rdoc.html#label-break+Statement) can also be found in the section on control expressions. `break` will return the value of the expression passed to it, or if no expression is provided, it will return `nil`. 
5. The [section on literals](https://docs.ruby-lang.org/en/3.0.0/doc/syntax/literals_rdoc.html) includes information on how to write literal data type values, including numbers. There, we find that Ruby allows us to use an underscore (`_`) to separate place values in very large numbers to make them easier to read. 
```
123456789
123_456_789
```
6. A Symbol is written using the `:name` literals syntax, so my name as a symbol would be `:Ginni`.
7. [String class docs](https://ruby-doc.org/core-3.0.0/String.html)
8. `#rjust` can be used to return a new string that is right justified. It can take two arguments, one determining what the length of the spacing of the new string will be and the other determining what characters will be used to fill the space. 