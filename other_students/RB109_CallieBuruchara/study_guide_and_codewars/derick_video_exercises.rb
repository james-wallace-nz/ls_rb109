# ANCHOR - First problem

# input: string
# output:  new string: old string in reverse order 
# rule: don't use #reverse, return a new string
# data structure: string & array

# accept a string as argument (str)
# str_chars = turn str into an array of characters, use #chars
# result = []
# start a loop
# result << str_chars[last index]
# index keeps getting smaller (going from right to left in array)
#  break when result size == str_chars size
# return result joined together into a string (join)

def reverse_string(str)
  str_chars = str.chars
  result = []
  index = -1
  until str_chars.size == result.size
   result << str_chars[index]
   index -= 1
  end
  result.join
end

# puts reverse_string("hello Hi how are You ")


# ANCHOR - Second problem
# input: two integers (start_num, end_num)
# output: all integers between those numbers except for 3 replacements

# accept two integers as arguments (start_num, end_num)
# result = []
# use upto--> start_num.upto(end_num) do |num|
# case statement
# when num % 5 & 3, print 'Fizzbuzz' 
# when num % 3, print Fizz
# when num % 5, print Buzz
# else, print num

def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    case
    when num % 5 == 0 && num % 3 == 0
      result << 'Fizzbuzz'
    when num % 5 == 0
      result << 'Buzz'
    when num % 3 == 0
      result << 'Fizz'
    else
      result << num
    end
  end
  result.join(', ')
end

# Alternate solution of mine
def fizzbuzz(start_num, end_num)
  start_num.upto(end_num) do |num| # could also do (start..end).each do
    case
    when num % 5 == 0 && num % 3 == 0
      print 'Fizzbuzz'
    when num % 5 == 0
      print 'Buzz'
    when num % 3 == 0
      print 'Fizz'
    else
      print num
    end

    if num == end_num
      puts ""
    else
      print ", "
    end
  end
end

# print fizzbuzz(1, 15) 

# ANCHOR - THIRD PROBLEM

PRODUCTS = [
  {name: 'Thinkpad x210', price: 220},
  {name: 'Thinkpad x220', price: 250},
  {name: 'Thinkpad x250', price: 979},
  {name: 'Thinkpad x230', price: 300},
  {name: 'Thinkpad x230', price: 330},
  {name: 'Thinkpad x230', price: 350},
  {name: 'Thinkpad x240', price: 700},
  {name: 'Macbook Leopard', price: 300},
  {name: 'Macbook Air', price: 700},
  {name: 'Macbook Pro', price: 600},
  {name: 'Macbook', price: 1449},
  {name: 'Dell Latitude', price: 200},
  {name: 'Dell Latitude', price: 650},
  {name: 'Dell Inspiron', price: 300},
  {name: 'Dell Inspiron', price: 450},
] 

query = {
  price_min: 240,
  price_max: 280, 
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(hash)
  price_range = *(hash[:price_min]..hash[:price_max])
  
  PRODUCTS.select do |product_hash|
    price_range.include?(product_hash[:price]) &&
    product_hash[:name].downcase.include?(hash[:q])
  end
end

# p search(query2)

# accept a hash with three items as an argument
# price_range = (hash[:price_min]..hash[:price_max])
# use select on PRODUCTS |product_hash|
# if price_range.include?(product_hash[:price])
# & if product_hash[:name].downcase.include?(hash[:q])

# ANCHOR - FOURTH PROBLEM

