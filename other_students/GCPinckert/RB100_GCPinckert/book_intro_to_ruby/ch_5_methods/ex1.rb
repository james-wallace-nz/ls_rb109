=begin
Exersie 1:

Write a program that prints a greeting message. This program should
contain a method called "greeting" that takes "name" as a parameter
and returns a string.
=end

def greeting(name)
  "Hello, #{name}!"
end

print "What's your name? "
name = gets.chomp
puts greeting(name)