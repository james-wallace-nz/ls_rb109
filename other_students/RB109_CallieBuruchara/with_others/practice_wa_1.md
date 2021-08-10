Explain this snippet using the correct terminology
What will it output?
```
a = 4
b = 2
​
[a, b].each do
  c = 3
  a = c
end
​
puts a
puts b
```

--
The local variable `a` is initialized on `line 4` and is assigned the value of Integer `4`. Local variable `a` is then put into an array and has the `each` method invoked on it on `lines 7-10`. Within the code block for the `each` method invocation (`lines 8-9`),
local variable `a` is reassigned to the Integer that local variable `c` is referencing, that is, Integer `3`. When the method `puts` is invoked on local
variable `a` on line 12, the output is Integer `3` and the return value is `nil`. This demonstrates the concept that when local variables are initialized
in the outerscope and then reassigned in the inner scope of a block of code, they retain the value given during the reassignment. 

The local variable `b` is initialized in `line 5`, and it is assigned the value of Integer `2`. Local variable `b` is put into an array and then the `each` method is invoked on it. However, nothing happens to local variable `b` during the `each` method invocation or in the block of code. Therefore, it remains the same after the `each` method invoction. Therefore, on line 13, the Integer `2` is output and `nil` is returned. For both lines 12 and 13, `nil` is returned, because that's what the `puts` method returns. 
--


​
Explain this snippet using the correct terminology
What will it output?
What concept is demonstrated?
```
x = "Bob"
​
3.times do |x|
  x = "Alice"
  puts x
end
​
puts x
```
--
Local variable `x` is initalized on `line 31` and is assigned the String object of `"Bob"`. It then appears to be passed into the the block of code for the `times` method invocation. However, it is not. This is because that the parameter name given for the `times` method block of code is the same name as the `local variable` initialized beforehand on line 31. This is variable shadowing (explained at the end).

The output of the `times` method invocation on lines 33-36 is `Alice` three times and on three separate lines beneath each other. The return value is Integer `3`, because a `times` method invocation returns the Integer it is given for the amount of times it is to do something. 

The `puts` method invocation on local variable `x` on line 38 has an output of `"Bob"` and it returns `nil`. This local variable `x` retains its original value as initialized on line 31 because of the same paramater name used by the `times` method invocation; therefore the `times` method invocation does nothing to local variable `x` as initialized on line 31. Also, it returns `nil` because `puts` method invocation returns `nil`.

This demonstrates the concept of variable shadowing, where an outerscope local variable is blocked for useage within a code block due to a parameter sharing its same name. 
--
​

Explain this snippet using the correct terminology
What will it output?
What concept is demonstrated?
```
def fix(value)
  value.upcase!
  value.concat('!')
end
​
s = 'hello'
fix(s)
puts s
```
--
Local variable `s` is initalized on line 60 and assigned the String object `"hello"`. On line 61, local variable `s` is then passed in as an argument into the method invocation of `fix`. 

In the method definition for `fix` on lines 55-58, we can see that two things happen to the passed in argument. First, it is destructively made into all capital letters with the `upcase!` method invocation. Secondly, it is destructively given `"!"` to append to the end of the passed in argument through the `concat` method invocation. Both of these changes are destructive because both of these methods are destructive. 

The output of the method invocation of `fix` on local variable `s` on line 61 is nothing (because `p`, `print`, nor `puts` is called on it), but the return value is `"HELLO!"` because both of the changes are applied to the given argument. 

The output of line 62, where the method invocation of `puts` is used on local variable `s` is the same object: `"HELLO!"`. This is because the changes within the method invocation of `fix` are destructive, so when local variable `s` was passed in, it retained all of the changes permanently. The return value of `line 62` is   `nil`, because `puts` returns `nil`.

This demonstrates the concept of mutating the caller with a method. It also demonstrates that not all mutating methods have a bang suffix. 
--
​
​
Explain why this method prints what it prints (how it currently works)
Fix the method so that it actually prints the input string in uppercase
- don't just call `.upcase` on input
```
def upcase(input)
  puts input.chars.each { |c| c.upcase! }
end
​
upcase('you')
```
--
As given, the method `upcase` outputs each letter of the passed in String argument as a capitalized standalone, i.e. one letter, per line, capitalized. This is because the `upcase` method is actually returning an Array instead of a String.

This can be remedied as follows:

def upcase(input)
  puts input.chars.each { |c| c.upcase! }.join
end
​
upcase('you')

Now, it will output the passed in String as an uppercase String. This was solved by calling the `join` method on the result of the `each` method invocation one `line 93`. 

Now what happens is: a String is passed in as an argument into the `upcase` method invocation block. Next, the String object is separated into an array of individual chracter Strings with the `chars` method. Next, this array of characters is iterated over with the `each` method. In the code block for the `each` method, each character is destructively capitalized with the `upcase!` method. Finally, after this array of characters has been changed, it is joined back together into a String object with the `join` method. All of this is output with `puts` to the screen, and `nil` is returned, because the `puts` method returns `nil`. 

--