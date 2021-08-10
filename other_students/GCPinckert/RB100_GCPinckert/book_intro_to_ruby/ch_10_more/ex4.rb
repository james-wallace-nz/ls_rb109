=begin
Exercise 4:
Modify the code in exercise 2 to make the block execute properly.
=end

def execute(&block)
  yield # could also use block.call
end

execute { puts "Hello from inside the execute method!" }