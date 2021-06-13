# 1.

# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# select returns array of selected elements
# 'hi' is truthy therefore all elements selected
# => [1, 2, 3] new array


# 2.

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# count counts the elements of array that have a truthy block return value
# => 2


# 3.

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# reject returns a new array of elements for which the block returns falsey
# puts num returns nil for each element
# => [1, 2, 3]


# 4.

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
# each_with_object returns the object passed in as an argument


# 5.

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# shift removes a key-value pair from the hash and returns that key-value pair as an array
# => [:a. 'ant']

# 6.

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# pop returns 'caterpillar'
# size returns 'catepillar'.size, which is 11


# 7.

# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# return value of the block is the last evaluated expression in the block, which is num.odd? => true/false
# return value of any? is true/false baesd on whether one of the blocks returns true
# 1 and 3 are odd so the block returns true for those elements
# therefore, at least one block return value is true so any? returns true

# What is also interesting here is any? stops iterating after this point since there is no need to evaluate the remaining items in the array; therefore, puts num is only ever invoked for the first item in the array: 1.


# 8.

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# take returns the first n elements from an array or range, in this case 2
# => [1, 2]


# 9.

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# [nil, 'bear']
# map called on a hash returns an array of the block return values. Map transforms the elements

# When none of the conditions in an if statement evaluates as true, the if statement itself returns nil. That's why we see nil as the first element in the returned array


# 10.

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
# the return value of puts is nil. When num is 2 and 3 the if branch of executes because these values are greater than 1
