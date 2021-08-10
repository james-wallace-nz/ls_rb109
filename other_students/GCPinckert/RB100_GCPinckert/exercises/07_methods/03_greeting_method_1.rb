=begin
Write two methods, one that returns the string "Hello" and one that 
returns the string "World". Then print both strings using `#puts`, 
combining them into one sentence.
=end

def hello 
  return "Hello"
end

def world 
  return "World"
end

puts "#{hello} #{world}"