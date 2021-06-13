arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array

=begin
- The code above will output numbers 1 through 10
- The code above will also output an empty array, and return an empty array object 
  
- The code above is demonstrating how method `select` works. Since on every iteration
  the last line of the block invoked method `puts` and passed `n` as an argument, we
  have the output I described on `line 10` and had a return value of `nil`
  - Since the last line of the block returned `nil`, this meant that the block 
  never evaluated to true, which means that method `select` never selected any elements 
  and added them to a new array. Which explains the output and return values 
  mentioned on `line 11`
=end