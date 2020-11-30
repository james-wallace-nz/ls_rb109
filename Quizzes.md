# To review / copy notes:

### Lesson 1: nil

### Lesson 2: 7, 11, 12, 17, 19

### Lesson 4: 7, 8, 16, 19, 20

### Lesson 5: 3, 

### Lesson 6: nil



## Lesson 1:


### 1) C
*What is the difference between Git and GitHub?*

Git is a distributed version control system which was designed to be used locally without a main central repository. GitHub is a cloud-based remote repository which acts as a centralized repository for Git in order to enable collaboration.


### 2) C
*When should you nest Git repositories?*

You should never nest Git repositories.


### 3) A, B, C, D

*Which of the following should you do as part of an active learning approach to using the video resources at Launch School?*

- Take notes.
- Eliminate external distractions.
- Look up concepts you don't understand.
- Review your notes to make sure you captured key concepts.


### 4) B

*When asking for help, what might be considered as a bad question?*

A question that is easily testable.


### 5) A, C

*Select all of the code examples below that meet the following requirements.*

*Write a method that takes one argument, a sentence string, and returns an array of integers. The value of each integer in the array should be equal to the length of the word in the corresponding position in the sentence. For example, if the sentence was 'To be or not to be' the array of integers would be [2, 2, 2, 3, 2, 2].*

``` ruby
def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end
```
`# => [2, 2, 2, 3, 2, 2]`

``` ruby
def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end
```
`# => ['To', 'be', 'or', 'not', 'to', 'be']`

- Although this method creates a new array `lengths` containing the length of each word in the sentence, this array is not returned. Instead, the last evaluated expression is the `each` method, which returns the `strings` array caller. This `strings` array contains an array of the original sentence words.

``` ruby
def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end
```
`# => [2, 2, 2, 3, 2, 2]`

``` ruby
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end
```
`# => [2, 2, 2, 3, 2]`

- Because of the way the `until` loop is constructed, the loop exits before iterating over the last element of the `strings` array. So the final `lengths` array does not include the length of the final word in the `sentence`.



## Lesson 2:


### 1) B

`MyModule` *is an example of*

CamelCase


### 2) C

*Identify the valid Ruby comment style.*

`# This is a comment`


### 3) A, B, D

*Select all the code examples that are valid examples of Ruby syntax.*

`response = Kernel.gets().chomp()`

`response = Kernel.gets.chomp`

`response = gets.chomp`


### 4) D

*Examine the following code:*

``` ruby
a = 2
b = rand(2)
a *= b

if a = 2
  puts 'Two'
else
  puts 'Not Two'
end
```
*There is an error in the code which means that it will always output "Two". *

*Identify the line responsible for the error.*

`if a = 2`


### 5) B

*What is pseudocode?*

- Pseudocode is a human-readable, high-level description of a program or algorithm which helps us formulate a solution at the logical problem domain level.
    - Pseudo-code allows us to outline a general approach to solving a coding problem without actually writing any code. It effectively allows us to load the problem into our brain first in order to be able to dissect it, understand it, and come up with an execution path to solve it. By using pseudocode we can perform this problem solving without having to worry about the syntax and structure of the solution in code. Once we have already solved the problem in pseudocode it is then a much simpler step to translate the solution into code.

Not:

- Pseudocode is the use of shapes and components to map out the logical sequence of a program or algorithm in a visual way.
    - This is actually a description of a flow-chart which we might use to visually plan or map out the logical flow of the program or application.

- Pseudocode is a static code analyzer. It analyzes your code and offers advice regarding its style format as well as possible logical errors.
    - This is a description of Rubocop, which we can use to analyze our Ruby code in order to ensure that it conforms to certain stylistic standards.

- Pseudocode is a debugging tool featuring syntax highlighting, a flexible plugin architecture, runtime invocation and source and documentation browsing.
    - This is actually a brief summary of some of the features of the pry gem, which is very useful for debugging our Ruby code and tracing code errors.


### 6) A, B, C, D

*Examine the code below:*

``` ruby
num = 8

if #omitted code
  puts 'Goodbye'
end
```

*Which of the following code snippets can replace #omitted code so the code outputs Goodbye? Select all that apply.*

`num > 5 && num < 10`

`num < 4 || num == 8 && num > 6`

`num < 7 || num > 7`

`num >= 8 && num < 6 || num > 4`


### 7) C, D

*Examine the code below:*

``` ruby
num = 12

if #omitted code
  puts 'Hello'
end
```

*Which of the following code snippets can replace #omitted code so the code outputs Hello? Select all that apply.*

`num % 4 == 0 || num < 7 && num < 10`

`num >= 8 && num < 6 || num > 4 && num < 16`

Not:

`num < 4 || num > 8 && num < 10 || num > 16`

- `&&` has higher precedence than `||`, so Ruby evaluates this part first. Since only one of the sub-expressions on either side of `&&` is truthy `num > 8`, the entire expression reduces to `num < 4 || false || num > 16`. Since none of these three sub-expressions are truthy, the entire expression evaluates to `false`.


### 8) C

*Given the following piece of pseudocode, which code implementation most closely matches it?*

```
Given a sentence made up of several words, write a method to do the following.

Iterate through the words one by one.
  - save the first word as the starting value.
  - starting with the next word iterate through all the remaining words in the sentence
  - for each iteration, compare the saved value with the current word.
  - if the word is longer or the same length as the saved value:
    - reassign the saved value as the current word
  - move on to the next word

After iterating through the sentence, return the saved value.
```

``` ruby
def longest_word(sentence)
  words = sentence.split
  saved_word = words.shift

  words.each do |word|
    if word.length >= saved_word.length
      saved_word = word
    end
  end

  saved_word
end
```


### 9) B, C, D

*In Ruby, what do we mean when we refer to something being truthy? Choose all the answers that apply.*

- It evaluates to true when used in a conditional.

- It is not nil or false.

- It returns true when preceded with a !!.


### 10) B

*There is an error in the code below; identify what it is.*

``` ruby
user_input = gets

loop do
  name = user_input
  break
end

if user_input
  puts "Hello " + name
end
```

The local variable name is initialized within the block, and so is not available in the outer scope.


### 11) C

*What specifically do we mean when we refer to a variable's scope?*

- We mean where in a program that variable is available for use.
    - A variable's scope determines where in a program a variable is available for use, in other words where it can be accessed. There are a number of things which determine the scope of a variable, such as the type of variable, where it was initialized and where you are trying to use it (e.g. within a method definition or a block following a method invocation).

Not: 

- We mean whether or not the variable was passed as an argument to a method.
    - Passing a variable into a method as an argument means that within the method we then have access to the object to which the variable is assigned, however this doesn't actually change the scope of the variable.

``` ruby
def print_string(string)
  puts string # This will output 'Hello' because we have access to the string 'Hello'
  puts a      # This will raise an exception because we don't have access to the variable a
end

a = "Hello"
print_string(a)
```

- The type of object that we assign a variable to doesn't make any difference to the scope of that variable.


### 12) A, D

*Select all of the statements which are true regarding local variable scope in Ruby.*

- Methods define their own, self-contained, scope.

- Variables initialized in an outer scope can be accessed in an inner scope defined by a block, but not vice versa.

Not:

- Each branch of an if/ else statement defines a separate, inner scope. These branches do not conflict.
    - **The branches of a conditional statement do not define separate scopes - these are part of the normal execution flow of the program.** In fact even if a branch is not executed, a variable initialized within it is still available to the program, although its value will be `nil`:

``` ruby
if false
  b = 'hello'
end

b # => nil
```

- Any code delimited by either curly braces {} or do/end defines a new scope.
    - only after a method invocation. do/end after `while` or `until` does not define a new scope
    - Blocks are delimited by either curly braces `{}` or `do/end`; however, code enclosed in this way does not always constitute a block. It is considered a block (and thereby creates a new scope for variables) if the `{}` or `do/end` immediately follows a method invocation. For example, following the `while` keyword with `do/end` does not constitute a block:

``` ruby
while true do
  a = 5
  break
end

> a # => 5
```

Along with that, writing `do` is optional for keywords such as `for`, `while`, and `until`:

``` ruby
while true
  a = 5
  break
end

> a # => 5
```


### 13) C

*Which statement most accurately describes why the last line of the code below outputs "hi"?*

``` ruby
def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting
```

- Because the String#+ method does not mutate the caller.


### 14) B, C, D 

*Looking again at the code from the previous question:*

``` ruby
def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting
```

*Select all the ways in which we could change this code in order for the last line to output "hi there".*

- Change `extend_greeting(greeting)` to `greeting = extend_greeting(greeting)`.

- Remove `puts greeting` and change `extend_greeting(greeting)` to `puts extend_greeting(greeting)`

- Change `greeting + " there"` to `greeting << " there"`.
    - We can also change the method implementation by using the `String#<<` method instead of the `String#+` method. This method does mutate the caller, and so when we call `puts` it outputs the mutated string.

Not:
- Change `greeting + "` there" to `greeting += " there"`.
    - Changing the method implementation to use `+=` doesn't cause `puts` to output `hi there`. This is actually shorthand for `greeting = greeting + ' there'` which is varaible re-assignment; however the `greeting` variable being reassigned is the one that exists within the scope of the method and not the one in the main flow of the program. **You cannot reassign a variable initialised outside of a method from within a method.**


### 15) A, B, D

*Which of the following behaviors does Ruby exhibit when passing an object as an argument to a method call? Select all that apply.*

- When an object is passed to a method call as an argument, the parameter assigned to it acts as a pointer to the original object.
    - In Ruby, variables are references to objects and do not contain objects themselves. When an object is passed in as an argument to a method, the method parameter is essentially acting as variable referencing that object.

- Re-assigning a variable within a method doesn't affect the object that the variable is pointing to outside of the method.
    - In Ruby, re-assigning a variable has no effect on the object the variable is bound to; it merely binds the variable to a different object.

- It is possible for an operation within the method to mutate the original object outside of the method.
    - In Ruby, if an object passed as a method argument is mutable, and the operation used within the method is one that mutates the caller, then the original object can be mutated.

Not:

- When an object is passed to a method call as an argument, a copy of the object is created and passed into the method.
    - This is not a behavior that Ruby exhibits. Ruby creates references to objects when passing them as method arguments, rather than creating copies of objects.


### 16) B, 

*What do we mean when we talk about variables as pointers in Ruby? Select all answers that apply.*

- Variables in Ruby act as labels we create to refer to physical space in memory.

Not:

- You can't have more than one variable pointing to the same memory address at the same time.
    - You can have multiple variables all pointing to the same space in memory, e.g.

- Using a method that mutates the caller points a variable to a different memory address.
    - Using a method that mutates the caller doesn't change the memory address that the variable is pointing to - this remains the same.

- Variables can only act as pointers if we pass them into a method as an argument.
    - Variables can act as pointers anywhere in Ruby code regardless of whether you are going to pass them to a method; however, variables initialized outside of a method can then only be accessed within a method if passed to that method as an argument.


### 17) B

*Why is the name method invoked instead of the local variable name on line 8 in the following example?*

``` ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name
```

- Local variables that are initialized outside of a method can't be accessed from within the method definition.
    - They can if passed in as arguments
- The local variable name is initialized outside the display_name method definition, which means it's not within the method's scope. Note that even if you pass a variable as an argument to a method, and the parameter name is the same as the name of the local variable we passed in as the argument, it will still be a different variable within a method (just with the same name), but both variables will point to the same object. The name method can be invoked from within display_name, though, because both methods are defined within the same scope. 

=> confusing wording 
- does Ruby try to access a local variable named `name` first and if it can't find then uses `name` method?

**Figure out, if variable accessed before method with same name. Also, figure out precedence of order or methods definitions and variable initialisation**
    - **Ruby doesn't take order of definition or initialization into account**
    - **Ruby gives precedence to the local variable `name` and doesn't try to invoke the `name` method**


Not:
- The name method is defined before the local variable name is initialized, so the method takes precedence.
    - When determining whether to invoke a method or reference a local variable (due to both having the same name), Ruby doesn't take the order of definition or initialization into account.
- Ruby tries to reference the local variable name first, but can't access it from within the method, so the name method is invoked instead.
    - Ruby never tries to reference the local variable name because it's not within the method's scope.


### 18) D

*In the following example, "George" is printed to the screen because the name method is invoked on line 8.*

``` ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name()
end

display_name
```

*How can we change the code so that "Lisa" is printed instead?*

``` ruby
def name
  "George"
end

name = "Lisa"

def display_name(name)
  puts name
end

display_name(name)
```


### 19) A

*In the following example, why does Ruby reference the local variable name on line 8 instead of invoking the name method?*

``` ruby


def name
  "George"
end

name = "Lisa"

loop do
  puts name
  break
end
```

- Local variables initialized outside of a block (in the outer scope) can be accessed from within the block's inner scope. Inside the block, both the local variable and the method are in scope, but by default Ruby first references the local variable.
    - When a local variable is initialized in the outer scope, it can be referenced from within the block's inner scope, but not vice versa. **Even though the local variable and the method have the same name, Ruby gives precedence to the local variable.**

Not:

- Ruby tries to reference the name method first, but can't invoke the method from within the block, so the local variable name is referenced instead.
    - The name method can be invoked within the block, but in this case, Ruby gives precedence to the local variable name and doesn't try to invoke the name method.
- The local variable name is initialized before the name method is defined, so the local variable takes precedence.
    - When determining whether to invoke a method or reference a local variable (due to both having the same name), Ruby doesn't take the order of definition or initialization into account.



## Lesson 4:


### 1) D

*What happens if we try to initialize a Hash that contains duplicate keys?*

*Example:*

`hsh = {a: 100, b: 200, c: 300, a: 400}`

*Try to answer without simply running the above code.*

The value for the second occurrence of the duplicate key overwrites the value for the first occurrence.


### 2) B, C, D

*Identify all of the code implementations that correctly meet the following set of requirements.*

> Given an array of strings representing integers, iterate through all of the items in the array. If the integer value of the string is odd add it to a new array of odd integer strings. Once iteration is complete the new array should contain all of the odd integer strings from the original array.

*Note: the objective here is to test your ability to read and mentally reason about the code. Try to answer this question without simply running each of the code examples in their entirety.*

``` ruby
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end
```

`# => ['3', '7', '11', '15']`

=> No


``` ruby
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end
```

`# => ['3', '5', '7', '11', '13', '15']`

=> Yes


``` ruby
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
counter = 0

loop do
  number = numbers[counter].to_i

  odd_numbers << numbers[counter] unless number.even?

  counter += 1
  break if counter == numbers.size
end
```
`# => ['3', '5', '7', '11', '13', '15']`

=> Yes


``` ruby
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

numbers.each do |number|
  odd_numbers << number if number.to_i.odd?
end
```

`# => ['3', '5', '7', '11', '13', '15']`

=> Yes


### 3) A, C, D

*Identify all of the code implementations that correctly meet the following set of requirements.*

> Given an array of integers, for each integer output all integers from 1 to that integer; e.g. if the integer was 5, you would output 1, 2, 3, 4, 5.

*As with question two, try to answer without simply running the complete code examples.*

``` ruby
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size              # 7

loop do
  number = numbers[-counter]
  for num in 1..number
    puts num
  end

  break if counter == 1
  counter -=1
end
```

``` ruby
# 1 2 3 4 5 6 7
# 1 2 3
# 1 2 3 4 5
# 1 2
# 1
# 1 2 3 4 5 6 7 8
# 1 2 3 4
```

=> Yes


``` ruby
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = 0

loop do
  number = numbers[counter]
  counter = 0

  loop do
    counter += 1
    puts counter

    break if counter >= number
  end

  counter += 1
  break if counter >= numbers.size                  # 8 >= 7 => true
end
```

``` ruby
# 1 2 3 4 5 6 7
```

=> No


``` ruby
numbers = [7, 3, 5, 2, 1, 8, 4]

for number in numbers
  counter = 0

  loop do
    counter += 1
    puts counter

    break if counter >= number
  end
end
```

``` ruby
# 1 2 3 4 5 6 7
# 1 2 3
# 1 2 3 4 5
# 1 2
# 1
# 1 2 3 4 5 6 7 8
# 1 2 3 4
```

=> Yes


``` ruby
numbers = [7, 3, 5, 2, 1, 8, 4]

numbers.each do |number|
  counter = 0
  number.times do
    counter += 1
    puts counter
  end
end
```

``` ruby
# 1 2 3 4 5 6 7
# 1 2 3
# 1 2 3 4 5
# 1 2
# 1
# 1 2 3 4 5 6 7 8
# 1 2 3 4
```

=> Yes


### Questions 4-6

*During a pairing session you are working on some code to meet the following requirements:*

> Implement a method that takes two arguments:
> 
> a sentence string consisting of one or more words
> a value which represents a particular case type from either snake case, camel case or upper snake case
> The method should return the given string transformed into the appropriate case.

*Example:*

``` ruby
sentence = 'The sky was blue'
change_case(sentence, :snake) # => 'the_sky_was_blue'
```
*You decide to write a 'main' method which takes the two arguments and then, depending on the value of the case parameter, calls one of three other methods:*

``` ruby
def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end
```

*Your pair works on the three individual case methods, but when you review their code you spot some issues. Identify the line of code causing the issue in each of the methods below; feel free to run the code in order to answer these questions.*


### 4) A

*This method takes a string in standard sentence case and should return it in snake case:*

``` ruby
sentence = 'The sky was blue'
snake(sentence) # => 'the_sky_was_blue'
```

*but it contains an error.*

*Identify the line of code that is causing the error.*

``` ruby
def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end
```

`current_word = 1`
    - By setting the value of current_word to 1, iteration will begin at the second item in the array. If the first word is not already lowercase then it will not be downcased; if there is only one word in the string then an exception will be raised.


### 5) B

*This method takes a string in standard sentence case and should return it in camel case:*

``` ruby
sentence = 'The sky was blue'
camel(sentence) # => 'TheSkyWasBlue'
```

*but it contains an error.*

*Identify the line of code that is causing the error.*

``` ruby
def camel(str)
  words = str.split(' ')
  counter = 0

  while counter > words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end
```

`while counter > words.size`
- This should use `<`` for comparison instead of `>`. As it stands, the loop never gets executed because counter is assigned to `0` and so is never greater than `words.size`.


### 6) B

*This method takes a string in standard sentence case and should return it in upper snake case:*

``` ruby
sentence = 'The sky was blue'
upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'
```

*but it contains an error.*

*Identify the line of code that you need to fix in order to make this code work properly.*

``` ruby
def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word].upcase!
  end

  words.join('_')
end
```

`current_word += 1`
- The problem here is not the line itself but the positioning of the line. Because we increment our current_word counter before the line that calls upcase!, the first word in the string does not get upcased (or if there is only a single word we break out of the loop straight away). This can be fixed by moving the line current_word += 1 to the bottom of the loop.


### 7) C

*Read the below statements regarding `each` and identify all the statements which are correct. You may assume that the block doesn't terminate the method prematurely.*

- When `each` is called with a block on an array, it returns the array object that it was called on.

Not:

- If you call `each` with a block on an array that contains seven elements, the block will always execute seven times.
    - If you mutate the object used to call each from within your block, the block may run fewer than 7 times.

- When `each` is called with a block on a hash, it returns an array.
    - The `Hash#each` method returns the hash that it was called on.

- When called with a block, the `Array#each` method considers the truthiness of the block's return value.
    - The `Array#each` method ignores the return value of the block.


### 8) B, D

*Read the below statements regarding `select` and identify all the statements which are correct.*

- When `select` is called with a block, it evaluates the truthiness of the block's return value.

- When `select` is called with a block on a hash it returns a new hash.

Not:

- If `select` was called with a block that returned a falsey value on every iteration, `select` would return `nil`
    - If the block's return value is evaluated as false on every iteration, the return value would be an empty collection of the type select was called on.

- If `select` was called on an array with a block that returned a truthy value on each iteration, the original array would be returned.
    - The return value in this case would be a new array containing all of the items from the original array.


### 9) B, C

*Read the below statements regarding `map` and identify all the statements which are correct. Assume that the block does not mutate the array.*

- If `map` was called with a block on an array containing five items, the return value would be an array containing five items.

- `Enumerable#map` and `Enumerable#collect` perform the same function.

Not: 
- If `map` was called with a block that returned `nil` on every iteration, it would return an empty array.
    - Return array of `nil`s

- When `map` is called with a block on a hash it returns a new hash.
    - When `map` is called with a block on a hash, the return value of the method is an array.


### Questions 10-20

*The remaining questions in this quiz have a focus on reading and understanding code, so try to avoid simply running the complete code samples in order to arrive at the correct answers. Feel free to refer to documentation, and you may even want to test out individual pieces of a larger code example in irb or similar; but the point here is to read code like this and be able to parse it in order to understand what each line is doing rather than just running it and basing your answer on the output or return value.*


### 10) B, C

*Identify all the code samples which are examples of selection.*

``` ruby
arr = [1, 2, 3, 4, 5]
counter = 0

new_arr = []

loop do
  num = arr[counter]
  if num >= 3
    new_arr << 0
  else
    new_arr << num * 2
  end

  counter += 1
  break if counter == arr.size
end
```

`new_array # => [2, 4, 6, 0, 0]`

=> Transformation


``` ruby
hsh = {a: 'apple', b: 'pear', c: 'orange', d: 'kiwi', e: 'banana'}
counter = 0

new_hsh = {}

for letter, fruit in hsh
  new_hsh[letter] = fruit if fruit.size > 4
end
```

`new_array # => { :a => 'apple', :c => 'orange', :e => 'banana'}`

=> Selection


``` ruby
def some_method(words)
  arr = []
  counter = 0

  loop do
    word = words[counter]
    arr << word if word.size < 4

    counter += 1
    break if counter == words.size
  end

  arr
end

poem = %w(April is the cruelest month)
some_method(poem)
```

`new_array # => ['is', 'the']`

=> Selection


``` ruby
num_arr = [2, 4, 7, 8, 11, 15]
counter = 0

until counter == num_arr.size
  puts num_arr[counter] + 1

  counter += 1
end
```

``` ruby
# 3 
# 5
# 8
# 9
# 12
# 16
```

=> Printing each element => Iteration


### 11) B, C

*Identify all the code samples which are not examples of transformation.*

``` ruby
def star_method(stars)
  arr = []
  stars.each do |star|
    arr.push(star.upcase)
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
```

`stars_2 # => ['SIRIUS', 'RIGEL', 'VEGA', 'POLARIS', 'ALTAIR']`

=> Transformation

- This is neither selection nor transformation. Although we call `downcase` on each element in stars, the way that the method is implemented means that nothing in our `stars_1` or `stars_2` arrays is selected or transformed. As with `each`, the return value of a `for` loop in Ruby (and therefore of our method) is simply the object it was called on, in this case the `stars_1` array that we passed to the method.


``` ruby
def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size
    star = stars[counter]
    arr << star if star.size > 4

    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
```

`stars_2 # => ['Sirius', 'Rigel', 'Polaris', 'Altair']`

=> Selection


``` ruby
def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
```

`stars_2 # => ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']`

=> Returns the original collection iterated over


``` ruby
def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size do
    arr << stars[counter][0, 3]

    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
```

`stars_2 # => ['Sir', 'Rig', 'Veg', 'Pol', 'Alt']`

=> Transformation


### 12) B

*Within the code below, identify the method represented by some_method:*

``` ruby
['a', 'b', 'c'].some_method do |item|
  puts item
end
# => []
```

`select`


### 13) D

*Within the code below, identify the method represented by some_method:*

```
[1, 2, 3, 4, 5].some_method do |num|
  num + 1
end
# => []
```

None of the above
- None of `each`, `select` or `map` would return an empty array with the given block. If `reject` was used here then an empty array would be returned.


### 14) C

*Within the code below, identify the method represented by some_method:*

``` ruby
['green', 'blue', 'red'].some_method do |word|
  puts word
  word.upcase
end
# => ['GREEN', 'BLUE', 'RED']
```

`map`


### 15) A

*Within the code below, identify the method represented by some_method:*

```ruby
{a: 1, b: 2, c: 3, d: 4, e: 5}.some_method do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end
# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}
```

`each`


### 16) A, C

*Carefully examine the following code example.*

``` ruby
pets = ['cat', 'parrot', 'dog', 'fish']
pets.map do |pet|
  pet.size == 3
end
```

*Based on your observations of the code example, select all statements below which are true.*

- The method called on the pets array considers the return value of the block.
    - The return value of the block, which will be true or false, is considered and in fact is used to populate a new array that is returned by the call to map.
- The method called on the pets array will return a new array.

Not: 

- The method called on the pets array will return the original array.

- The method called on the pets array will return only the items from the array which meet the criteria set in the block.


### 17) D

*Carefully examine the following code example.*

``` ruby
flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
flavors.reject { |flavor| puts flavor }
```

*(Based on your observations of the code example, select all statements below which are true.)*

- The method called on the flavors array considers only the truthiness of the block's return value.
    - Like `Array#select`, `Array#reject` is only interested in the truthiness of the block's return value, though in the case of `reject` it returns the items for which the block is not `true`, or in other words is falsy.

Not:

- The method called on the flavors array will return an empty array.

- The method called on the flavors array ignores the return value of the block.

- The method called on the flavors array returns a reference to the original array.


### 18) A, B, C

*Identify all of the code implementations that correctly meet the following set of requirements.*

> Given an array numbers which contains both odd and even integers; create two new arrays, `odd_numbers` which contains the odd integers from the original array and `even_numbers` which contains the even integers.

``` ruby
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

odd_numbers = numbers.select do |number|
                number.odd?
              end

even_numbers = numbers.select do |number|
                number.even?
              end

```

=> Yes


``` ruby
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

numbers.each do |number|
  if number.even?
    even_numbers << number
  elsif number.odd?
    odd_numbers << number
  end
end
```

=> Yes


``` ruby
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

for number in numbers
  next if number.odd?
  even_numbers << number
end

for number in numbers
  next unless number.odd?
  odd_numbers << number
end
```

=> Yes


``` ruby
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.even?
                            end
```

=> No

- This gets the two new arrays the wrong way around in the parallel assignment. This is because `Enumerable#partition` returns an array containing two sub-arrays, the first of which contains the elements for which the block evaluates to `true`. Since the condition in this case evaluates whether each number is even, we should assign `even_numbers` to the first sub-array and `odd_numbers` to the second.


### 19) B, C, D

*Identify all of the code implementations that correctly meet the following set of requirements.*

*Given the following hash which contains keys representing countries and values representing the capital cities of those countries, return a new hash containing only the key-value pairs where the country begins with the letter 'B'.*

``` ruby
countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}
```

`countries_and_capitals.select { |_, country| country[0] == 'B' }`

`# => { 'Belgium' => 'Brussels', 'Barbados' => 'Bridgetown', 'Brazil' => 'Brasilia' }`

=> No


``` ruby
countries_and_capitals.each_with_object({}) do |(k, v), obj|
  obj[k] = v if k.chr == 'B'
end
```

`# => { 'Belgium' => 'Brussels', 'Barbados' => 'Bridgetown', 'Bolivia' => 'La Paz', 'Brazil' => 'Brasilia' }`

=> Yes


``` ruby
def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

select_countries(countries_and_capitals)
```

`# => { 'Belgium' => 'Brussels', 'Barbados' => 'Bridgetown', 'Bolivia' => 'La Paz', 'Brazil' => 'Brasilia' }`

=> Yes


``` ruby
def begins_with_b(string)
  string[0] == 'B'
end

countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end
```

`# => [ ['Belgium' => 'Brussels'], ['Barbados' => 'Bridgetown'], ['Bolivia' => 'La Paz'], ['Brazil' => 'Brasilia'] ]`

=> No


### 20) D

*Your team is asked to refactor some legacy code used by the marketing team. One of the requirements of the project is to change the implementation from using basic looping structures to using iterative methods instead.*

*Sample data:*

``` ruby
mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]
```

*Legacy code:*

``` ruby
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end
```

*The team comes up with four options to replace the legacy code, which you then discuss during a code review. Select all the options which replicate the functionality of the legacy code.*

``` ruby
mailing_campaign_leads.map do |lead|
  lead[:name].capitalize!
end

mailing_campaign_leads.select! do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
```

=> No, map doesn't mutate the original array :name

- This only capitalizes the first name in the name string. You might also note that this is not really an appropriate use of `map`, and `each` would be a better choice here.


``` ruby
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.keep_if do |lead|
  lead[:days_since_login] <= 60 && lead[:mailing_list]
end
```

=> No, <= 60 != < 60

- This performs an incorrect comparison in the conditional, using `<=` instead of `<`; although this error isn't surfaced by the test data it could have an impact in production.


``` ruby
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list
end
```

=> No

- When evaluating our `usable_leads`, we want to check that the customer's last login was less than 60 days ago and also that they are subscribed to our mailing list. Because this solution uses `reject` rather than `select` it is only eliminating leads where neither of those things are `true` rather than just one of them. This could be fixed by using `||` instead of `&&` in the conditional.


``` ruby
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
```

=> Yes



## Lesson 5:


### 1) D

*Given the code below:*

``` ruby
arr = ['340', '15', '1', '3400']

arr.sort # => ['1', '15', '340', '3400']
```

*Which of the following statements most accurately describes why that particular return value is produced?*

- The `Array#sort` method sorts items by using comparison. The comparison is carried out using the appropriate comparison method for the item type, in this case the `String#<=>` method. The strings are compared character by character according to ASCII position. Longer strings are considered greater if the strings are equal when compared up to the shortest length.

Not:

- The `Array#sort` method sorts items by using comparison. The comparison is carried out using the appropriate comparison method for the item type, in this case the `String#<=>` method. The `String#<=>` calls `String#ord` for every character in the string, with the total of the resulting Integer ordinals determining the sort order.
    - Although you can determine the position of a String character in the ASCII table by calling String#ord on it, these values are not totaled to determine sort order; strings are compared character by character.

- The `Array#sort` method sorts items by using comparison. The comparison is carried out using the appropriate comparison method for the item type, in this case the `String#<=>` method. The `String#<=>` method compares the strings according to their length.
    - String length can be a factor, but only if strings of different length are equal when compared to the shortest length, such as with the '340' and '3400' strings.

- The `Array#sort` method sorts items by using comparison. When comparing strings that represent integers the `String#to_i` method is automatically called and the items are sorted according to their numeric value.
    - String#<=> does not automatically call to_i on numeric strings, although we could sort them this way by using sort or sort_by with a block and carrying out the conversion in the block.


### 2) C

*In the following array, a, b, c and d are variables representing objects to be sorted:*

`[a, b, c, d]``

*Given the following return values when we compare these variables:*

``` ruby
a <=> b # => -1
c <=> b # => 0
d <=> c # => 1
```

*In what order would we expect the items in the array to be if we called sort on the array? (Assume that the objects in question are defined in such a way that they have a set, linear order).*

`# => [a, b, c, d]`


### 3) A

*Given the code below, select all the valid ways to return the value for the hash key :three.*

``` ruby
arr = [
  {one: '1', two: 2},
  [{four: 5, three: 6}, :three],
  :three,
  {2=>:two, 3=>:three}
]
```

`arr[1][0][:three]`


### 4) C

*Given the following nested data structure, and without running the code, select the correct option to change the string 'Apple Juice' to 'Orange Juice'.*

``` ruby
todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  }
]
```

`todo_lists[0][:todos][2][:name] = 'Orange Juice'`


### 5) A, B, C, D

*Given the following nested data structure, and without running the code, select all the options that would set the value for :completed to true for all of the todos in the 'Homework' list.*


``` ruby
todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]
```

=> Yes


``` ruby
todo_lists[1].each do do |list_key, list_value|
    if list_key == :todos
        list_key.each { |todo| todo[:complete] = true }
    end
end
```

=> Yes


`# => todo_lists[1][:todos][0/1][:completed] = true`

=> Yes


``` ruby
todo_lists.each do |list|
    if list[:list_name] == 'Homework'
        list[:todos].each do |todo|
            todo[:completed] = true
        end
    end
end
```

`# => todo_lists[1][:todos].each { |todo| todo[:completed] = true }`

=> Yes


### 6) D

*Without running the code attempt to work out what the last three lines will output.*

``` ruby
a = 'hi'
english_greetings = ['hello', a, 'good morning']

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'

greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]
```

``` ruby

english_greetings = ['hello', 'hi', 'good morning'] # => [1] ref a obj

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: ['hello', 'hi', 'good morning'],      # => ref english_greetings obj
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'                  # => reassignment 
# => english_greetings = ['hello', 'hey', 'good morning']
# => a = 'hi'

greetings.each do |language, greeting_list|
    greeting_list.each do |greeting|    # ['bonjour', 'salut', 'allo']
                                        # ['hello', 'hi', 'good morning']
                                        # ['buongiorno', 'buonasera', 'ciao']
        greeting.upcase!
    end
end
=>  {
  french: ['bonjour', 'salut', 'allo'],
  english: ['hello', 'hi', 'good morning'],
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings => {
  french: ['BONJOUR', 'SALUT', 'ALLO'],
  english: ['HELLO', 'HI', 'GOOD MORNING'],      # => ref english_greetings obj
  italian: ['BUONGIORNO', 'BOUNASERA', 'CIAO']
}

english_greetings => ['hello', 'HEY', 'good morning']

puts a                                          # => hi
puts english_greetings[1]                       # => 'HEY'
puts greetings[:english][1]                     # => 'HEY'

```

`puts a                      # => 'hi'`
`puts english_greetings[1]   # => 'HEY'`
`puts greetings[:english][1] # => 'HEY'`

- `greetings[:english][1] = 'hey'` reassigns the reference at index 1 of the `english_greetings` array to the string `hey`, but `a` is still pointing the string `hi`.
- The call to `each` within the block and `upcase!`` mutates the strings in all of the sub-arrays to their upcased versions.


### 7) C

*Examine closely the following code:*

``` ruby
[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end

[
    ['a', 'b'], 
    ['c', 'd'], 
    ['e', 'f']
].map do |sub_arr|              # => ['a', 'b'], ['c', 'd'], ['e', 'f']
  sub_arr.map do |letter|       # => 'a', 'b', 'c', 'd', 'e', 'f'
    letter.upcase               # => 'A', 'B', 'C', 'D', 'E', 'F'
  end                           # => ['A', 'B'], ['C', 'D'], ['E', 'F']
end                             # => [['A', 'B'], ['C', 'D'], ['E', 'F']]
```

*Without running the code, identify the matching description.*

- The return value of the `String#upcase` method is returned by the inner block to the inner call to `Array#map`; this adds the uppercase string to a new array in place of the lowercase version. This new array is returned by the outer block to the outer call to `Array#map`. This call to `map` also creates a new array, populated by the new inner arrays (containing the uppercase strings), which it then returns.

Not:

- The return value of the `String#upcase` method is returned by the inner block to the inner call to `Array#map`; this in turn returns each uppercased string to the outer block, which returns it to the outer call to `Array#map`. This outer call to map creates a new flat array, populated by uppercased versions of each string.

- The return value of the `String#upcase` method is returned by the inner block to the inner call to `Array#map`. `Array#map` ignores the return value of the block and simply returns the calling object (i.e. the inner array that was passed to it for that iteration). This inner array is passed by the outer block to the outer call to `Array#map`, which in turn ignores the return value and returns the calling object (i.e. the original nested array).

- Within the inner block, the `String#upcase` method is called on each element of the inner array for that iteration. Since the `String#upcase` method is non-destructive, the inner call to `Array#map` simply returns the same sub-array that was passed to it by the outer block; this in turn is passed to the outer `Array#map` call, which returns an unchanged array.


### Questions 8 to 10
*Your team is working on some reporting functionality for the Sales Department. Your brief is to produce code that lets the Sales Department report on the value of orders per customer. Each order is represented by a hash within an array, but there may be more than one order per customer. The Sales Department wants to report two things:*

- *The total value of orders for each customer*
- *The total value of fulfilled orders for each customer*

*This is an example of the provided data:*

``` ruby
order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]
```

*Your team decides to approach the problem in two stages:*

- *Convert the initial data structure to a more usable format*
- *Extract the required information from the restructured data*

**Note:** *the objective with this set of questions is to test your ability to read and understand the code. Try to answer these questions by examining and mentally parsing what the code is doing rather than simply running the complete code samples.*


### 8) C

*You agree that the restructured data should look like this:*

``` ruby
customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]
```

*The team comes up with four possible solutions to convert the initial data to the new structure. Select all the solutions which correctly restructure the data.*


``` ruby
customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        [
          row[:order_fulfilled],
          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values
```

`:orders` is an array or arrays not array of hashes.
=> No


``` ruby
temp_orders = {}

order_data.each do |row|
  temp_orders[row[:customer_id]] = {
      customer_name: row[:customer_name],
      customer_id: row[:customer_id],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values
```
Duplicate `:customer_id` keys: replace existing values
=> No


``` ruby
customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values
```
=> Yes


``` ruby
customer_orders = order_data.map do |row|
  {
    customer_id: row[:customer_id],
    customer_name: row[:customer_name],
    orders: [
      {
        order_fulfilled: row[:order_fulfilled],
        order_value: row[:order_value]
      }
    ]
  }
end
```
Does not add `order_fulfilled:` and `order_value:` to `orders:` array, it just adds every element in the `order_data` array to `customer_orders`
=> No


### 9) A, B, C

*For the second part of the solution, extracting the data, the format that is required in each case is as follows:*

``` ruby
all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]
```

*For the unfiltered totals, the team again comes up with four possible solutions. Select all those that correctly implement the requirements.*


``` ruby
all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end

  all_orders[index][:total_order_value] = order_value
end
```

=> Yes


``` ruby
all_orders = customer_orders.map do |customer_data|
  order_value = customer_data[:orders].inject(0) do |total, order_data|
    total + order_data[:order_value]
  end

  {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: order_value
  }
end
```

=> Yes


``` ruby
all_orders = []

customer_orders.each do |customer_data|
  customer_total_orders = {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: 0
  }

  customer_data[:orders].each do |order|
    customer_total_orders[:total_order_value] += order[:order_value]
  end

  all_orders << customer_total_orders
end
```

=> Yes


``` ruby
all_orders = []

customer_orders.each do |customer_data|
  cust_arr = [
    [:customer_id, customer_data[:customer_id]],
    [:customer_name, customer_data[:customer_name]],
    [:total_order_value]
  ]

  order_value = 0
  customer_data[:orders].each do |order|
    order_value += order[:order_value]
  end

  cust_arr[2] << order_value

  all_orders << cust_arr
end
```

Result is `all_orders` array contains arrays, which contains arrays for each element

`[[[:customer_id, 12], [:customer_name, "Emma Lopez"], [:total_order_value, 483.48]], [[:customer_id, 32], [:customer_name, "Michael Richards"], [:total_order_value, 205.65]]]`

Could fix with `.to_h` at the end of `<< cust_arr`. Changes array of nested key-value pairs to hash.

=> No


### 10) C

*For the filtered totals, one of the team suggests the following solution:*

``` ruby
fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  fulfilled_orders[index][:order_value] = order_value
end
```

*While reviewing it, you spot a bug. Identify the line causing the bug.*

`total + order[:order_value] if order[:order_fulfilled]`

Same as `( total + order[:order_value] ) if order[:order_fulfilled]`

`order[:order_value] if order[:order_fulfilled]` returns `nil` if `order[:order_fulfilled]` is `false`. `nil` cannot be added to `total`.

- if the conditional is not executed then the block will return `nil` for that iteration.
- If there is a fulfilled order after an unfulfilled order an exception will be raised
- Can fix by adding an `else` clause to return `total` from the block for unfulfilled orders

Not:

`fulfilled_orders = customer_orders.map do |customer|`

`order_value = data[:orders].reduce(0) do |total, order|`

`fulfilled_orders[index][:order_value] = order_value`



## Lesson 6:


### 1) B, C

*Which of the following are recommended approaches when learning to code "larger" programs? Select all that apply.*

- Write out a high-level description of the problem.

- Use a flowchart to map out the logical sequence of a possible solution in a visual way.

Not:

- Start coding straight away; the sooner you start coding the faster you will be able to understand the problem.

- Google for an existing solution and then copy it.


### 2) A, B, C, D

*Which of the following are reasons why it can be useful to use a flowchart when dealing with a larger programming problem?*

- A flowchart helps us map out the steps required within the overall flow of a program.

- Outlining the general flow of a program allows you to break it down into sub-processes.

- Using a flowchart allows you to solve the problem at a higher level, without getting too focused on the implementation details.

- Using a flowchart can help debug logical errors in your program.


### 3) B, D

*Why is it important that we think carefully when naming methods, particularly with larger programs?*

- Appropriately naming a method means that you don't have to constantly check the method implementation when you come to use it later on.

- Well-named methods allow you to more easily parse the various interactions between different parts of the program.

Not:

- It's not really that important; just call your methods whatever you can think of quickly, you can always change them later.

- Using quirky, funny, or interesting method names adds some personality to your program and allows it to stand out from the crowd.


### 4) A, C, D

*Which of the following guidelines should you follow when naming variables and methods?*

- Choose descriptive names that capture the intent of the variable or method.

- Use a ! at the end of method names for methods that mutate the caller.

- Name methods and variables from the perspective of using them later.

Not:

- Keep names short, using single character names where possible, in order to save space and keep your code tidy.


### 5) A, B, D

*Which of the following guidelines should you follow when writing methods?*

- Keep your methods simple, with a clear and specific purpose.

- Think of your methods as stand-alone pieces of functionality that you can use to piece together larger structures.

- Split up large methods into shorter, simpler methods.

Not: 

- Ensure all your methods have both a side effect and and meaningful return value.
    - All methods will have a return value of some sort, but generally a method should have either a meaningful return value (i.e. a return value that is subsequently used by the program) with no side-effects, or only perform side-effects with no meaningful return value.


### 6) B, C, D

*Although Rubocop is intended as a guide rather than rules which you have to strictly adhere to, it can quite often be a good idea to follow Rubocop's recommendations. For example, the AbcSize, CyclomaticComplexity, and PerceivedComplexity cops identify methods that are deemed to be overly complex according to the various metrics used by the cops.*

*Why might it generally be a good idea to pay attention to the cop in situations such as this? Pick all the answers that apply.*

- If the method is overly complex then it will be hard to debug any errors that occur as a result of the method.

- If a method is complex then it is more difficult to read and mentally parse the code.

- If we have overly complex methods in our code then that code becomes harder to test and maintain.

Not:

- If Rubocop flags an offense related to method complexity, the code identified as causing the offense won't work if we ignore the cop.
    - Although Rubocop can sometimes flag code that might cause bugs its purpose is essentially stylistic, so the code should still run even if we ignore Rubocop.

