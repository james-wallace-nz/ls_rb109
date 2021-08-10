=begin
Exercise 2:

Write a method that takes a string as argument. The method should
return a new, all-caps version of the string, only if the string is
longer than 10 characters. 

Example: change "hello world" to "HELLO WORLD". 
=end

def caps_if_long(string)
  if string.length > 10
    string.upcase!
  else
    string
  end
end

print "Please enter some text: "
string = gets.chomp

puts caps_if_long(string)