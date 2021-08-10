# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.

p dasherizer(2112) #== '21-12'
p dasherizer(201105742) #== '201-105-742'
p dasherizer(123456789) #== '123456789'
p dasherizer(21121) #== '21-121'


def dasherizer(num)
  result = ''
  num = num.to_s.chars
  num.each_with_index do |num, idx|
    if idx = num.size - 1
      result << num
    elsif num.to_i.odd? && num[idx + 1].to_i.odd?
      result << num << '-'
    else
      result << num
    end
  end
  result
end

p dasherizer(2112) #== '21-12'
p dasherizer(201105742) #== '201-105-742'
p dasherizer(123456789) #== '123456789'
p dasherizer(21121) #== '21-121'


# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.



def dasherizer(int)
  output = ''
  char_array = int.to_s.chars
  char_array.each_with_index do |ch, idx|
    output << ch
    next if idx == char_array.size - 1 
    if ch.to_i.odd?
      if char_array[idx + 1].to_i.odd?
        output << '-'
      end
    end
  end
  output
end


# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.
p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'
