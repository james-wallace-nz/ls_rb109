def greatest_product(string)
  digits = string.chars.map(&:to_i)
  consecutive_numbers = []
  
  0.upto(digits.size - 5) do |index|
    consecutive_numbers << digits[index, 5]
  end
  
  consecutive_numbers.map do |sub_array|
    sub_array.reduce(:*)
  end.max
  
end
  

p greatest_product("123834539327238239583") #== 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") == 0
