# What is the code output? What does it return? What does this show about #delete and #delete_at?
​
​
numbers = [1,2,3,4,5]
​
p numbers.delete_at(1)
​
p numbers.delete(1)
​
# On line 3, the method `p` is invoked and takes numbers as an argument.
# The variable numbers, on this line, has also called the .delete_at method
# which takes one arguement, the integer 1. 
​
# The .delete_at method iterates over array and selects the value at index position 1.
# This returns the integer 2 and mutates the array to [1,3,4,5].
​
# The return value 2 is passed to the p method as an arguement and p returns the value 2
​
# On line 5, the method 'p' is invoked and takes numbers as an arguement with the .delete 
# method invoked upon it. .delete also takes an argument which is the integer 1. 
​
# The .delete method iterates over the array and selects the value that is is equal to the
# argument that is passed to it. It then returns that object, in this case 1, 
# and deletes the object from the array thereby mutating it. 
​
# The p method on line 5 returns the value of 1 as this is the return value of the method .delete 
​
# This shows that the delete_at method, mutates an object based on the index position
# that is passed as a argument. Whereas, the .delete method mutates the object by removing
# the element that matches the arguement passed to it. Both of these methods return the deleted 
# value
​
# --------
# 12 mins 
# --------

##Feedback
- Make sure to put `backticks` around `line 5-7` and other line placements, as
  well as variables names (`numbers`) and method names (`delete_at`)
- Also ensure to call them local variables instead of generic "variables"
- Good catch that `delete_at` returns the deleted value and not the mutated
  array!
- P does return the value 2...and it also outputs it. Even though p outputs and
  returnthe exact same thing, make sure to distinguish between those two and
  mention both (even if it's repetitive)
- Excellent summary at the bottom! Clear, includes everything it needs, and well-written.
​
​
# Explain this snippet using the correct terminology
​
# What will it output?
​
# What concept is demonstrated?
​
```
​
x = "Bob"
​
​
3.times do |x|
​
  x = "Alice"
​
  puts x
​
end
​
​
​
puts x
​
```
​
# ​On line 1, x is intialized as a variable and is assigned the value of the string object 'Bob'
​
# On line 3, the method times is called by the integer 3 and a do and end block is passed to it 
# as an argument
​
# The block has the parameter |x|, the parameter x is then assigned the value of the string object  
# 'Alice'.
​
# Within the block the puts method is invoked and the variable x is passed to it as an arguement.
​
# This will output 'Alice' 3 times and return nil as part of the times method. 
​
# The puts method is invoked on the last line and it passes x to it as an argument. This 
# prints the value assigned to x which is 'Bob' and returns nil.
​
# It does this as this is an example of variable shadowing. The parameter x is named the same 
# as the variable x in the outerscope and as a result it creates a new object in innerscope but
# this does not affect x in the outerscope. 
​
----
9 mins
---- 
##Feedback
- ``local`` variable, backticks on line numbers, etc (same as from first
  problem)
- Write `do...end` block instead of `a do and end block`
- Good explanation of variable shadowing and good catch. You kind of say it, but
  seek to explicitly say that the parameter x BLOCKS the usage of local variable
  x in the inner scope of the do..end block because they share the same name. 

​
# Explain this snippet using the correct terminology
​
# What will it output?
​
# What concept is demonstrated?
​
```
​
def fix(value)
​
  value.upcase!
​
  value.concat('!')
​
end
​
​
​
s = 'hello'
​
fix(s)
​
puts s
​
```
​
# On lines 1-7, the method fix is defined with one parameter, value. 
​
# On line 9, the variable s is initalized and assigned the value of the string object 'hello'
​
# on line 11, the fix method is invoked and s is passed to it as an arguement.
​
# On line 3, the paramter value calls the .upcase! method which mutates the string value
# to uppercase letters. 'HELLO'
​
# On line 5, the parameter value calls the .concat method which takes one arguement, the 
# string object '!'. This again mutates the string object and the string object '!' is added 
# to the end of the string 'HELLO', transforming the value of value to 'HELLO!'
​
# As s and value are pointing to the same object, s's value is also 'HELLO!'
​
# On line 13, the puts method is invoked and the variable s is passed to it as an argument. 
​
# This outputs the string object 'HELLO!' and returns nil. 
​
# This is an example of mutation and how Ruby works as pass by reference when invoking mutative methods.
​
# ---
# 8 mins
# ---

##Feedback
- ```local``` variable, etc. 
- Excellent! Clear, concise, and well written. 