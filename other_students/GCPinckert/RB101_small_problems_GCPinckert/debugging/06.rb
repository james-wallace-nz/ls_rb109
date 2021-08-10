=begin
The given code is supposed to move a given number of elements from one array
to another. Line 11 results in a SystemStackError. 

This is because move is a recursive method with no stop condition. The method
will keep calling itself over and over again and never utilize a return value.
This causes too many procedures (the recursive method calls) to be on the stack
and the computer's memory is overloaded, this breaking the program and the
resulting error.

We can fix this by adding a stop condition to the recursive method.
=end

def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
