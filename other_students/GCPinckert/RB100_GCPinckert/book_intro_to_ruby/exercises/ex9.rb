=begin
Exercise 9:
Suppose you have a hash h = {a:1, b:2, c:3, d:4}
  * Get the value of key `:b`.
  * Add to this hash the key:value pair `{e:5}`
  * Remove all key:value pairs whose value is less than 3.5
=end

h = {a:1, b:2, c:3, d:4}

# get value of key :b
puts h[:b]

# add key:value pair {e:5}
h[:e] = 5
p h

# remove key:value pairs whose value is < 3.5
h.select! { |k, v| v >= 3.5 }
p h