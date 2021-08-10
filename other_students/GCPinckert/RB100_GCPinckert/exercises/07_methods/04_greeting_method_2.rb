=begin
Write a method named `greet` that invokes the methods from
03_greeting_method_1.rb. When `greet` is invoked with `#puts` it should
output the following:
Hello World
Make sure you include a space between "Hello" and "World" without 
modifying the methods `hello` or `world`. 
=end

def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + " " + world
end

puts greet