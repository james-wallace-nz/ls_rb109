require 'pry'

def wave(str)
  result = []
  str.size.times do |i|
    binding.pry
    next if str[i] == " "
    first = i == 0 ? "" : str[0..(i-1)]
    up = str[i].upcase
    last = str[(i+1)..-1]
    result << (first+up+last)
  end
  result
end

p wave('hello')

#input: string (could be empty, coule have weird spacing)
#output: an array of strings with a wave of capitalized letters
# array as same amount of items as the string has characters

# accept string as argument (str)
# str_size = str.strip.size
# create array with str (conserving whitespace) using fill (str, 0, str_size)

# [hello, hello, hello, hello, hello]

# 