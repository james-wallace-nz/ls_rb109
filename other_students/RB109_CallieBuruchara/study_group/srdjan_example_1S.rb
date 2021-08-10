# Given the string of chars a..z A..Z do as in the sample cases

# p accum("abcd")    # "A-Bb-Ccc-Dddd"
# p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# p accum("cwAt")    # "C-Ww-Aaa-Tttt"

# given string of chars
# change string into chars array
# print letter once as a capital
# if it's past the first position, 
# print the letter the amount of times for the position it's in 
# after each letter put a -


def accum(str)
  ary = str.chars
  new_array = []

  ary.each do |letter|
    new_array << letter.upcase

    ary.find_index(letter).times do
      new_array << letter.downcase
    end
    new_array << "-"
  end
  new_array.pop
  new_array.join
end

p accum("abcd")
p accum("RqaEzty")
p accum("cwAt")


def accum(str)
  str.chars.map.with_index { |c, i| (c * (i + 1)).capitalize}.join('-')
end