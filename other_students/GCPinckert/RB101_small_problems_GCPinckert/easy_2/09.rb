# What does the following code print? Explain.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
The code above will output:
>> BOB
>> BOB

On line 3, the local variable `name` is initialized to reference the string
object 'Bob'. Then on line 4, the local variable `save_name` is initialized to
the variable `name`. Because of this, both variables now point to the same
object in memory (the string 'Bob'). Therefore, when changes are made to the
string object on line 5 using the destructive method `upcase!`, these changes
are reflected in each variable. Because neither variable has been reassigned,
they still both point to the same object, resulting in the name BOB being
output twice.
=end