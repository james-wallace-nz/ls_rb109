=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, and false if not. A substring is longer than 1 character.

****

input = 2 strings
output = boolean

determine if there is a substring of at least 2 characters long common to both strings
case insensitive (see 4th example)
spaces don't qualify
max substring length determined by total length of the shorter string

ALGORITHM

determine length of both strings
max_length = length of shorter string

init start index = 0
init second_start = 0
result = false
loop
  break if start index + 1 == max_length
  init sub length = 1
  start with first char of first string
  compare to first char of other string
  if the same and sub length == 2
    return true
  elsif they are the same
    increment sub length
  elsif (second start + 1) < str2.length
    increment second start
  else 
    revert sub_length to 1
    revert second star to 0
    increment start index
  end
  
return false if result.length < 2
=end

def substring_test(str1, str2)
  str1.length >= str2.length ? max_length = str2.length : max_length = str1.length  
  start = 0
  second_start = 0
  sub_length = 1
   
  loop do
    break if (start + 1) == max_length

    sub1 = str1[start, sub_length].downcase
    sub2 = str2[second_start, sub_length].downcase
    check = sub1 == sub2

    if check && sub_length == 2
      return true
    elsif check
      sub_length += 1
    elsif (second_start + 1) < str2.length
      second_start += 1
    else
      sub_length = 1
      start += 1
      second_start = 0
    end

  end
  
  false  
end


puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true
