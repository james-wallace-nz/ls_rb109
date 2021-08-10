=begin

ALGORITHM
- Obtain number equivalent to the string
  - If the string starts with '-'
    - Multiply * -1, else return number
    

=end

def string_to_integer(string)
  single_digits = ('0'..'9').to_a
  total = 0
  
  string.chars.each.with_index do |current_number, index|
    actual_number = single_digits.index(current_number)
    multiplier = string.size - (index + 1)
    total += actual_number * (10 ** multiplier) 
  end
  
  total
end

def string_to_signed_integer(string)
  no_sign_string = string.tr('-+', '')
  number = string_to_integer(no_sign_string)
  
  string.start_with?('-') ? number * -1 : number 
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100