=begin
Greet Your Friends:
Given the following array of names, use a for loop to greet each
friend individually.

Expected output:
Hello, Sarah!
Hello, John!
Hello, Hannah!
Hello, Dave!
=end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end
