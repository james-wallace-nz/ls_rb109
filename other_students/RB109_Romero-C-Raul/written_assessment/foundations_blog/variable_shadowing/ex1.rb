a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b

=begin
- Code will output 5, 5, 4, 2

- On line 1, we initialize local variable 'a' and assign it to the integer
  object '4'
- On line 2, we initialize local variable 'b' and assign it to the integer
  object '2'

- On line 4, we invoke method 'times' on integer object '2' and pass
  a 'do..end' block with block parameter 'a'
  - On line 5, within the block, we assign variable 'a', initialized when
  the block is called, to the integer object `5` 
  
  - Variable `a` in outer scope cannot be accessed due to variable shadowing
    Having the same name for a variable passed in as a block parameter
    prevents us from accessing any variables with that same name in the 
    outer scope
  
  - On line 6, we invoke method puts and pass local variable 'a' as an
    argument, which outputs 5 twice
    
- On line 9, we invoke 'puts' and pass local variable 'a' as an argument
  - Output is 4
  - Return is nil
- On line 10, we invoke 'puts' and pass local variable 'b' as an argument
  - Output is '2'
  - Return is nil
=end

#each, map, select

