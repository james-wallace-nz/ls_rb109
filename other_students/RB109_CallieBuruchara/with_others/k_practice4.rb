# input: string of integers
# output: integer version of that same string

# make a constant variable array of all string numbers 
# accept a string of integers as an argument (str)
# initialize a result, final_num = 0
# iterate over string with each
# str.index(char)

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(str)
  final_num = 0
  amount_of_zeros = 1
  str.chars.each do |num|
    final_num += (NUMBERS.index(num) * (10 ** (str.size - amount_of_zeros)))
    amount_of_zeros += 1
  end
  final_num
end

p string_to_integer('4321')# == 4321
p string_to_integer('570')# == 570