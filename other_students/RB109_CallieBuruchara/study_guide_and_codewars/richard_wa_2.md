# What does the following code return? What does it output? Why? What concept does it demonstrate?

array = [1, 2, 3, 4, 5]

array.select do |num|
  puts num if num.odd?
end


# What does the following code return? Why? What concept does it demonstrate?

hash = {"Bob" => :boy, "Sally" => :girl, "Joe" => :boy, "Jane" => :girl}

hash.select do |pair|
  pair.start_with?("B")
end


# What does the following code return? Why? What concept does it demonstrate?

words = %w(jump trip laugh run talk)

words.map do |word|
  word.start_with?("t")
end

# What does the following code return? Why? What concept does it demonstrate?

numbers = [1, 2, 3, 4, 5, 6]

numbers.each {|n| n**n }


# What does the following code output? Return? Why? What concept does it demonstrate?

a = 23
b = 5

loop do 
  a = b
  c = a
  a = c
  break
end

p a