### ASSIGNMENT
* On `line #` the local variable `var_name` is initialized to the `Obj_type` `obj_name`.

# TO SAME VARIABLE
* On `line #` the local variable `_` is initialized to the `Obj_type` `obj_name` that the local variable `_` is pointing to. Currently, the local variables `_` and `_` both point to the same object.

# USING RETURN VALUE
* On `line #` the local variable `var_name` is initialized to the return value of a call to the method `method_name` with the `Obj_type` `obj_name` passed to it as an argument.

# PARAMETER RECIEVES FROM ARGUMENT
* Within the method, `parameter` now points to `object`, having received that reference from `argument`. 


### RE-ASSIGNMENT
* On `line _` the local variable `_` is re-assigned to the `Obj_type` `obj_name`.

# DIVIDING
* On `line _` the local variable `_` is re-assigned to the `Obj_type` `obj_name`. The local variable `_` now points to a different object than `other_var`.

# UNITING
* On `line #` the local variable `_` is re-assigned to the `Obj_type` `obj_name` that the local variable `_` is pointing to. Currently, the local variables `_` and `_` both point to the same object. 

# USING RETURN VALUE
* On `line #` the local variable `var_name` is reassigned to the return value of a call to the method `method_name` with the `Obj_type` `obj_name` passed to it as an argument.

# INCREMENTING
* On `line #` `counter` is incremented by 1. Another way to say this is that we’re reassigning `counter` to point at “`counter` + 1”, and in the first iteration, this is `0 + 1` `counter` now points to the `Integer` `1`.


### VARIABLE EVALUATION (BARE)
* On `line #` `var_name` is evaluated and `return_value` is returned.

### VARIABLE UNCHANGED
* `var_name` is unchanged because it has not been reassigned to a different object and the object it references has not been mutated.


### MUTATING "ASSIGNEMENT"-LIKE

# INDEXED ASSIGNMENT []=
* On `line #` the `#[]=` indexed reassignment method mutates the object `var_name` is pointing to, changing `var_name``[index]`so that it references...

# CONCATENATION <<
* On `line #` the `<<` method is called on `var_name` with `added_by_concat` passed in as an argument. This mutates the `Obj_class` `obj_name` that `var_name` references, by adding `added_by_concat` to the end.


### MUTATING THE CALLER -- GENERAL MUTATION (e.g. var.method!)
* On `line #` the `method` method is called on `var_name`, mutating the `Obj_class` object it references. `var_name` now has the value `obj_value`.


### METHOD DEFINITION
* On `lines #-#` we define the `method_name` method with the parameter `var_name`.


### METHOD INVOCATION

# WITH ARGUMENT
* On `line #` we invoke the `method_name` method and pass in as an argument the `Obj_type` `obj_name` that the local variable `var_name` is pointing to.
SHORTER 
* On `line #` we invoke the `method_name` method and pass in the local variable `var_name` as an argument.

# OUTPUT - YES (PUTS)
* On `line #` the `puts` method is invoked with the local variable `_` passed in as an argument. Since `var_name` is currently assigned  to the `Obj_type` `obj_name`, this is output to the screen and returns `nil`.

# OUTPUT - STRING INTERPOLATION (PUTS)
* On `line #` the `puts` method is invoked on the string `"string_value #{interpolated}"`, with `#{interpolated}` representing the string interpolation of `interpolated`'s value. Since `interpolated` is currently assigned  to the `Obj_class` `obj_name`, `"string_value interpolation"` is output to the screen. `nil` is returned.

# OUTPUT - NO?
* Since we are not invoking any output methods like `print`, `puts`, or `p`, this code does not output anything.

# #[]
* On `line #' we call the `Array#[]’ method on `array_name` to access a single element. 
# WITH VARIABLE AS INDEX
* The variable `var_name` is passed in as an argument within the brackets, and thus we access the element at the index equal to the value of `var_name`. (In the first iteration, `var_name` has the value of `#`, so the element at index `#`, i.e. `#`, is returned.)


### METHOD INVOCATION: ITERATORS

# LOOP WITH BLOCK
* On `lines #` we call the `loop` method and pass in a `do..end` block as an argument.
* Within the block:
    * On `line #` ...
# BREAK 
* On `line #` we are breaking out of the loop by using the keyword `break` if the value of the object that local variable `var_name` is referencing (is equal to 0.)
# RETURN VALUE
* The return value of the loop is `nil` since `break` returns `nil` unless given a specific value to return.

# WITH INTEGER.TIMES
* On `lines #` we call the `times` method on the `Integer` `#` and pass in a `do..end` block as an argument.
* Within the block:
    * On `line #` ...
* The block is iterated `#` times, as per the `times` method invocation on `line 4`. The `times` method returns `#` as well.

# EACH
* On `line #`, we call the `each` method on `var_name`, passing in a block as an argument. The `each` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `block_var_name`. The block is executed once for each element. Once `each` is done iterating, it returns the original collection, i.e. the calling object itself. 
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# EACH_WITH_INDEX
* On `line #`, we call the `each_with_index` method on `var_name`, passing in a block as an argument. The `each_with_index` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `block_var_name`, while the local variable `index_var` points to the index of that element in the collection. The block is executed once for each element. Once `each_with_index` is done iterating, it returns the original collection, i.e. the calling object itself. 
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# EACH_WITH_OBJECT
* On `line #`, we call the `each_with_object` method on `var_name`, passing in both an object (in this case, an `Obj_class`, `{[]}`) and a block as arguments. The `each_with_object` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `block_var_name`, while the object passed is assigned to the local variable `object_passed_var`. The block is executed once for each element. Once `each_with_object` is done iterating, it returns the initially given object, i.e. the object passed in as an argument. 
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# SELECT (Array)
* On `line #`, we call the `select` method on `var_name`, passing in a block as an argument. The `select` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `block_var_name`. The block is executed once for each element. `select` evaluates the return value of the block, and if the return value of the block evaluates to `true`, it adds the element to a new array. This new array is the return value of the `select` method. 
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# MAP 
* On `line #`, we call the `map` method on `var_name`, passing in a block as an argument. The `map` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `block_var_name`. The `map` method executes the block once for each element. It places the block's return value in a new array. This new array is the return value of the `map` method. 
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# MAP! 
* On `line #`, we call the `map!` method on `var_name`, passing in a block as an argument. The `map!` method iterates through the collection, passing each element to a block in turn, and assigning it to the local variable `block_var_name`. The `map!` method executes the block once for each element in the collection, replacing the element with the return value of the block, thus mutating the calling object. 
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# MAP vs MAP! 
* `map!` mutates the calling object while `map` returns a new collection.

# ANY? (ALL? etc)
* On `line #`, we call the `any?` method on `var_name`, passing in a block as an argument. The `any?` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `var_name`. The block is executed once for each element. `any?` evaluates the return value of the block, and if the return value of the block evaluates to `true`, it stops iterating and returns `true`. If none of the return values of any of the iterations of the block are `true`, but rather are all `false`, then the method returns `false`.
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

# PARTITION
* On `line #`, we call the `partition` method on `var_name`, passing in a block as an argument. The `partition` method iterates through the collection, passing each element to the block in turn and assigning it to the local variable `var_name`. The block is executed once for each element. `partition` evaluates the return value of the block, and if the return value of the block evaluates to `true`, it adds that element to an array at index `0`, while if the block returns `false`, then it adds it to an array at index `1`.
* In this case, within the block:
    * On `line #` ...
* For example, in the first iteration the block returns ...

### IF CONDITIONAL
* The return value of the if conditional is based on the last evaluated expression of the branch that is executed. If none of those clauses get executed, the return value is `nil`


### CONCEPTS

# TRUTHINESS
* This demonstrates the concept of truthiness. Specifically that everything in ruby is truthy with the exception of `false` or `nil`.


# VARIABLES AS POINTERS - MUTATION
* This demonstrates that `variables are pointers` to physical address space in memory, as well as one way Ruby employs its `pass by reference value` object passing strategy. Methods that `mutate` the caller will mutate the calling object by changing the address space in memory. This will affect any variables pointing to the same space in memory (same object). 

# VARIABLES AS POINTERS - ARGUMENT UNCHANGED AFTER METHOD
* This demonstrates how, in Ruby, `variables are pointers` to physical address space in memory, as well as one way Ruby employs its `pass by reference value` object passing strategy. Methods that `do not` mutate the caller object do not alter the value of the variables passed in as arguments, regardless of whatever other role that object, or the parameters in the method that reference it, may play in the method.

# VARIABLES AS POINTERS - REASSIGNMENT (NON-METHOD CENTRIC)
* This demonstrates how, in Ruby, a variable points to an object (a physical address space in memory) and that when that variable is reassigned, it does not affect the object itself or any other variables that may reference that object.


# LOCAL VARIABLE SCOPE - FROM BLOCK TO OUTER SUCCESS
* This code demonstrates that a variable initialized in an outer scope (like the top level here) can be accessed within an inner scope (like within the block here), and the changes made to that variable, such as which object it references, are still accessible when back in the outer scope.

# LOCAL VARIABLE SCOPE - FROM BLOCK TO OUTER FAILURE
* This code demonstrates that a variable initialized in an inner scope (like within the block here) cannot be accessed in an outer scope (like the top level here).

# LOCAL VARIABLE SCOPE - METHOD INVOCATION
* This shows how a method definition creates its own scope outside the regular flow of execution. This is why local variables initialized within a method definition cannot be referenced from outside the method definition. It's also the reason why local variables within a method definition cannot access data outside of the method definition unless the data is passed in as a parameter.


# VARIABLE SHADOWING
* This demonstrates variable shadowing, where a variable initialized in an outer scope that has the same name as another variable initialized in an inner scope (such as a block parameter) is not available in the inner scope.


# INDEXED ASSIGNMENT - COLLECTIONS (ARRAY)
* This demonstrates that in Ruby it is possible to mutate an array via indexed assignment, thus maintaining the same physical memory space for it, while assigning (not mutating) elements within the array.


### COLLECTION METHODS

# EACH
* This demonstrates the `each` method as described above. `each` is used to iterate a code block (often for a side effect, like outputting), not to transform the collection itself.

# EACH_WITH_INDEX
* This demonstrates the `each_with_index` method as described above. `each_with_index` is used to iterate a code block (often for a side effect, like outputting), not to transform the collection itself.

# EACH_WITH_OBJECT
* This demonstrates the `each_with_object` method as described above. `each_with_object` is used to iterate a code block (sometimes, as here, to return a new collection), not to transform the collection itself.

# PARTITION
* This demonstrates the `partition` method as described above. `partition` is used to return a new collection with two subarrays, one for the elements where the block returns `true`, and the other for the ones where it returns `false`.

# MAP
* This demonstrates the `map` method as described above. `map` is used to perform transformation on a collection, returning a new array holding the results of that transformation. Each element of the new array is the return value of the iteration of the block that used the corresponding "untransformed" element from the original collection.

# SELECT
* This demonstrates the `select` method as described above. `select` is used to create a new collection, adding -- or not adding -- each element based on the block evaluating to `true` or `false` at each iteration.
