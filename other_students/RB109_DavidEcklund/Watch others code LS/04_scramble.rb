=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise, return false.
=end

def scramble(str1, str2)
  array1 = str1.chars
  array2 = str2.chars
  array2.each do |char|
    ind = array1.index(char)
    return false if ind.nil?
    array1.delete_at(ind)
  end  
  true
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true


=begin

input = two strings
output = boolean

RULES

If a group of characters from str1 can be put in a different order to match str2, return true, else false
each instance of a character must be matched with a distinct instance in the other string

DATA

arrays, strings

ALGORITHM

str1, str2 make an array
iterate str2_array
  for each character, find AN index in str1 that matches that character and delete_at that index
  if it can't return false
  
end
true

=end