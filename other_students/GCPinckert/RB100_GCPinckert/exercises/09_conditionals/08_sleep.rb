=begin
Using the given variable, write an if statement that returns "Be 
productive!" if status is 'awake' and returns "Go to sleep!" if not.
Then, assign the return value of the if statement to a variable and
print that variable.
=end

status = ['awake', 'tired'].sample

result = status == 'awake' ? 'Be productive!' : 'Go to sleep!'
puts result
