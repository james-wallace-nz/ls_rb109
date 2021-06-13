def integer_to_string(integer)
  string_numbers = ('0'..'9').to_a
  
  integer.digits.reverse.map do |num|
    string_numbers[num]
  end.join
end

def signed_integer_to_string(integer)
  string_number = integer_to_string(integer.abs)
  
  if integer == 0
    string_number
  elsif integer < 0
    string_number.prepend('-')
  else
    string_number.prepend('+')
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'