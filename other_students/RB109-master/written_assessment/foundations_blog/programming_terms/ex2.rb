def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

p example('hello')

=begin
- Invoking method example and passing string object with value hello:
  - Output 'hello' 3 times
  - Return 'nil'
  
  - On lines 1 - 8, we are defining the method example which takes in 
    1 paramenter
    
  - On line 10, we are invoking method example and passing as an argument
    a string object with value of 'hello'
    
  - On line 2, we are initializing local variable 'i' and assigning it to an
    integer object with value 3
    
  - On line 3, we are invoking method loop and passing in as an argument
    a  do..end block
  - On line 4, we are invoking method puts and passing in as an argument
    the local variable str
  - On line 5, this is synctactical ruby sugar which represents
    i = i - 1
      - So in this line, we are re-assigning local variable i, to the return
        value of invoking the method '-' on local variable 'i' and passing in 
        integer object '1' as an argument
  - On line 6, if local variable i is equal to integer object 0
    - We will break out of the loop using keyword break.
  
=end