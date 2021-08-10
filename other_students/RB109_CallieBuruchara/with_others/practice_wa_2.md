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