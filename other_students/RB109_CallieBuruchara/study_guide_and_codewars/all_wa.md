# Explain each element of this code, including what is the output, what is returned, and why.
​
5.times { |i| puts "Hello there, #{i}"}
​
First we create an integer object without assigning it to a variable and then call the `.times` method on it.
To `.times` we pass a block as the argument.
The block content is executed 5 times and each time the parameter `i` is reassigned to the `int -1`.
Therefore the output will be 5 lines of `Hello there, (num)` with num starting at 0, ending at (incl.) 4.
The method call will return the integer it has been called on, in this case `5` as calling `.times` with a block as an argument returns the object `.times` has been called on.
​
--
It might be totally fine, but I'm not sure if they prefer "method invokation" vs "call a method". I just saw they liked the word
"invocation". 
What does `int -1` mean on line 7?

Looks good :)
--
​
# What is the output of this code? What is returned? Why? What does this example demonstrate?
​
people = [["Ashley", "Ben"], ["Cassie", "David"], ["Erica", "Floyd"], ["Greta", "Harold"]]
​
def mystery(person)
  person[2][1] << "Jessica"
  person[2][1]
end
​
puts mystery(people)
​
The the `mystery` method will return `FloydJessica` which passed as an argument to `puts` and printed.
`puts` then returns nil.
This snippet demonstrates, that local variables declared outside a method which are passed into the method as an argument can be mutated within the method. The snippet also demonstrates how to access elements in a nested array.

--
Small typo on line 30: The the
Super concise and clear! Well done. 
--
​
​
​
#What is the output of lines 16 and 17? What do each return? What does this show about #delete and #delete_at?
​
numbers = [1,2,3,4,5]
p numbers.delete_at(1)
p numbers.delete(1)
​
Comment: I know you didn't ask for line by line explanation but I wanted to to practice ;)
On line 1 we initialise the local variable `numbers` and create a new array object which in turn references multiple integer objects with the values `1,2,3,4,5`. The reference of the array object is assigned to `numbers`.
On line 2 the `.delete_at` method is called on the numbers object with `1` passed in as an argument. That will delete (mutate) the value at the index position `1` which in this example is `2`. After that operation, the array is `[1,3,4,5]` which is returned and passed as the argument to the `p` method which then prints `[1,3,4,5]` to the console.
On line 3 `.delete` is called on numbers with an integer object with value `1` passed in as argument. That method will delete all objects that are equal to the argument's value (`1`) in the array and return the resulting array. In this case the method will return `[3,4,5]` which is then passed to `p` as an argument and `p` prints `[1,2,3]` to the console.

--
I think we need to put backticks around line numbers, too, like `line 1`. 
(Aside: I was about to say that you misspelled initialize...and then I remembered that it's European English spelling. Aha. My British friend and I tease each other often about this...)
Good explanation on line 48

Actually, on `line 44`, `p` outputs `2` and returns `2`, because `delete_at` returns the deleted object instead of the original array. Even if `puts` was called, it would output `2` (but return `nil`).

Similarly on `line 45`, `p` ouputs and returns `1` for the same reason, as `delete` returns the same thing as `delete_at` does. 
Hope that makes sense!

--
​
​
# What is the output of this code? What is returned? Why?
​
def pattern(n)
  (1..n).map{|x| x.to_s*x}.join("\n")
end
​
pattern(5)
​
Comment: I know you didn't ask for line by line explanation but I wanted to to practice ;)
On line 1-3 we define a method called `pattern` which takes one paramenter called `n`.
Within the method definition we first create an array from `1` to `n` (inclusive) on which the `.map` method is called. To the `.map` method we pass a block as an argument. The block is executed once for each item in the array and each time the parameter `x` is reassigned to the current value of the iteration. We then perform `x.to_s * x` for each iteration which is evaluated and is the return value of the block. So in the first iteration that `x` is `1`, that is transformed into a string object with the value `1` and then the `*` method is called on that string object which returns a new string object containing `x` copies of the the string object it was called on.
The `.map` method appends the return value of the block on each iteration to a new array. `.map` will return that array once all iterations are done.
When that is done `.join("\n")` will be called on the new array which joins all string objects in the array together using `\n` in-between, which will return one string object.
As that is also the last line within the method, that string object will be returned by the `pattern` method itself.
On line 5 we invoke the `pattern` method and pass in an integer object with the value `5` as an argument.
The return value will be `1\n22\n333\n4444\n55555` but nothing is outputted as neither `puts` nor `p` is called.

--
There was a lot in this small line of text, and I think you explained it well! Good job! 
--

# Explain each element of this code, including what is the output, what is returned, and why.

5.times { |i| puts "Hello there, #{i}"}


# What is the output of this code? What is returned? Why? What does this example demonstrate?

people = [["Ashley", "Ben"], ["Cassie", "David"], ["Erica", "Floyd"], ["Greta", "Harold"]]

def mystery(person)
  person[2][1] << "Jessica"
  person[2][1]
end

puts mystery(people)


# What is the output of lines 16 and 17? What do each return? What does this show about #delete and #delete_at?

numbers = [1,2,3,4,5]
p numbers.delete_at(1)
p numbers.delete(1)


# What is the output of this code? What is returned? Why? 

def pattern(n)
  (1..n).map{|x| x.to_s*x}.join("\n")
end

pattern(5)

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

# Why does the last line  output "good morning" world rather than "GOOD MORNING".
# What does this demonstrate about what happens on line 2?
def say_something(string)
  string.upcase
end

input = "good morning"
say_something(sentence) # ///Callie: I'm going to assume this was supposed to say `say_something(input)`

puts input

///
String object `good morning` is output on line 11 because of the following:
Local variable `input` is initialized and assigned to string object 'good
morning' on line 8. `Input` is then passed in as an
argument to the `say_something` method invocation on line 9. During this method
invocation, the passed in String object has the method `upcase` invoked on it. However,
`upcase` is not destructive, that is, the original object is not mutated or
changed. Therefore, when `input` is printed on `line 11`, it retains its
original assignment from when it was initialized. This demonstrates that not all
methods mutate the caller, i.e. the object it is called upon. 

# When run, the code below outputs the Integers 1,2,3,4,5,6.
# Explain the code in detail, especially the two calls to #each.
main_arr = [["1", "2"], ["3", "4"], ["5", "6"]]

main_arr.each do |arr|
  arr.each do |num|
    puts num
  end
end

///
On `line 25`, local variable `main_arr` is initialized and assigned to a nested array, i.e. an
array that contains other arrays inside of it. Each of these three nested arrays have
two String objects that are different numbers. 

On `line 27`, an `each` method with a block is invoked on local variable
`main_arr`. This `each` method and block will iterate through each of the
nested arrays of `main_arr`.
Within the block of the first `each` method, another `each` method with a block is invoked, but this
time on the parameter `arr` as defined in the first `each` method's block. This
second `each` method will iterate over the items in each sub-array of
`main_arr`. In the second `each` method block, each item (`num`) is printed with
the `puts` method. Because we are now inside the nested array itself, it will
print out the individual numbers, one at a time. 

The second `each` method will loop over each nested array because of the first
`each` method. Once all numbers are printed, both `each` methods will be exited
and the original `main_arr` array will be returned. 