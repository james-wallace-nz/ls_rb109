What does the code output?
What are the return values?
Summarize what the problem demonstrates and why.

1. 

```ruby
greeting = 'Hello'

loop do
  greeting = 'Hi'
  break
end

puts greeting
```

outputs 'Hi' and demonstrates local variable scope and variable reassignment 

On line 6, the local variable `greeting` is initialized to String `Hello`.

The `loop` method invocation followed by a `do..end` pair on lines 3-6 defines a block, and within the block, on line 9, `greeting` is reassigned to String `Hi`.

Finally, on line 13, the `puts` method is invoked and local variable `greeting` is passed in as the argument.
This outputs `Hi`, as local variable `greeting` points to String `Hi`.

This example demonstrates local variable scoping rules in Ruby.
Specifically, it demonstrates how a local variable initialized in the outer scope is accessible in the inner scope.

2. 
```ruby
a = 'a'
b = [a, a, a]
a << '!'
```

On line 1, the local variable `a` is initialized to String `a`.

element references to the string object 'a'
destructive or non-destructive 
the push / concatenate method is destructive so the value of the string is mutated in place to 'a!'


3. 
```ruby
def add_name(arr, name)
  arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect
```

line 6 names local variable is initialized to the array object containing strings 'bob' and 'kim'
the add_names method is called with the parameters names variable and string 'jim'
on line 3 the arr agrument is concatenated with the name parameter 
this mutates the arr parameter in place by adding the new element at the end 'jim'
the add_name method returns the mutated arr parameter
on line 8 the inspect method is called on the names local variable and output with the puts method call
the output is the array object `['bob', 'kim', 'jim']`

this demonstrates how a method can mutatate an object passed in as an argument

## Luke

pass in a variable as the argument.

the `inspect` method is invoked on the object that `names` local variable references .


On line 6, `names` is initialized to Array `['bob', 'kim']`.

On line 7, the `add_name` method is invoked with local variable `names` and String `jim` passed in as its argument.
The object that `names` references is assigned to the parameter `arr`, and now both `names` and `arr` reference the same Array object.

On line 3, the `<<` method is invoked on the object `arr` references, with parameter `name` passed in as its argument.
Since the `<<` method is destructive, the Array object both `arr` and `names` references is mutated and now has a value of `['bob', 'kim', 'jim']`.

On line 8, the inspect method is invoked on the object `names` references, and the return value is passed in as an argument to the `puts` method invocation. This outputs `['bob', 'kim', 'jim']`.



4. 
```ruby
[2, 5, 3, 4, 1].sort
```

`<=>`

`2 <=> 5`

`['arc', 'bat', 'cape', 'ants', 'cap'].sort`


`'cape' <=> 'cap'`
1


5. 
```ruby
a = 4

2.times do |a|
  a = 5
  puts a
end

puts a
```

line 2 LV a is initialized to the integer 4

line 4 the times method is invoked on the integer 2 with a block and block parameter a, which shadows outer-scoped a

on line 5 the block parameter a is reassigned to the integer 5 and this shadows the local variable a initialized on line 2

line 6 the puts method is invoked with the block parameter a, which outputs the value 5 twice

on line 9 puts method is invoked with the local variable a because outsid eof the block the block parameter with the same name is not visible

line 9 outputs 4 because reassignment on line 5 does not affect the local variable a

this example demonstrates variable shadowing... prevents access to the outer-scoped variable.





Problems:
collections
sort
prepare a lot on: each, select and map
change something then as 'what happens now'
be careful on output and return


Interview:
integer
string