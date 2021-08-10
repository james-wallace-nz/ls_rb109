# What will the following code print and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

array1.each { |value| array2 << value }
# => ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
# array2 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# => ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']

puts array2
# => Moe
# => Larry
# => CURLY
# => SHEMP
# => Harpo
# => CHICO
# => Groucho
# => Zeppo

=begin
- The first thing we do is initialize two arrays:
  - array1, an array of names
  - array2, an empty array
- We call Array#each method on array1 and pass it a block. Each iterates through
  the array of names and passes each element to the block as the argument 'value'
- In the block, each value is concatenated with array2, the empty array. Because
  the concatenation operator (<<) is a destructive method, these changes are
  permanently reflected in the value referenced by array2.
- By the end of iteration, array2 will have as it's elements all the names from
  array1. Both arrays will reference the same objects in memory.
- Now we call each on array1 again. This time, we pass it a block that calls
  the method `upcase!` on each element (or 'value') in the array that begins with
  'C' or 'S'. The `upcase!` method mutates the caller, so those values that invoke
  the method will be permanently altered in memory. 
- Because both array1 elements and array2 elements reference the same objects in
  memory, when we then `puts` array2 on line 13, the changes to elements in array1
  will be reflected.
- Namely, the names CURLY, SHEMP, and CHICO will all be in all caps
=end