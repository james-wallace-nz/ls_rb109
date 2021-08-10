# Explain each element of this code, including what is the output, what is returned, and why.

5.times { |i| puts "Hello there, #{i}"}


# What is the output of this code? What is returned? Why? What does this example demonstrate?

people = [["Ashley", "Ben"], ["Cassie", "David"], ["Erica", "Floyd"], ["Greta", "Harold"]]

def mystery(person)
  person[2][1] << "Jessica"
  person[2][1]
end

puts mystery(people)


# What is the output of lines 16 and 17? What do each return? What does this show about #delete and #delete_at?

numbers = [1,2,3,4,5]
p numbers.delete_at(1)
p numbers.delete(1)


# What is the output of this code? What is returned? Why? 

def pattern(n)
  (1..n).map{|x| x.to_s*x}.join("\n")
end

pattern(5)
