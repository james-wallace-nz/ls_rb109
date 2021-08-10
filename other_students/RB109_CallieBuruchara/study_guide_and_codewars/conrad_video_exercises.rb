# !SECTION - FIRST PROBLEM

# input: array of strings
# output: new array of strings, but with vowels removed

# data: arrays, strings

# accept an array of strings as an argument (ary_strings)
# iterate thrugh array strings with map
# delete vowels using regex
# make sure to return word at end of map block

def remove_vowels(ary_strings)
  ary_strings.map |word| word.delete('aeiouAEIOU')
end

# p remove_vowels(['green', 'yellow', 'black', 'white'])


# !SECTION - SECOND PROBLEM


# input: string
# output: boolean: indicates whether string has balanced parentheses
# balanced = open parentheses amount == close par. amount &&
# open parentheses first

# accept a string as an argument (str)
# turn string into array of characters --> chars = str_array
# counter = 0
# loop over str_array
# if char == ( --> counter + 1
# if char == ) --> counter - 1
# return true only if counter is 0

def balancer(str)
  counter = 0

  str.chars.each do |char|
    break if counter == -1
    if char == '('
      counter += 1
    elsif char == ')'
      counter -= 1
    end
  end
  counter == 0
end

# p balancer("hello(()))")

# !SECTION - THIRD PROBLEM

# input: two integers (first, last)
# output: print all prime integers within that range (first-last)
# rules: don't use 'prime' class. 

# accept two integers as arguments (first, last)
# create a range of these (use to_a)
# iterate through the numbers with each
# print num if number is prime


# HOW TO CHECK IF PRIME
# (iterating through with each..|num|)
# num % 

def find_primes(first, last)
(first..last).select do |num|
  counter = num - 1
    loop do
      answer = num % counter 
      return false if answer == 0
      return true if counter == 1
      counter -= 1
    end
  end
end

p find_primes(3, 10)