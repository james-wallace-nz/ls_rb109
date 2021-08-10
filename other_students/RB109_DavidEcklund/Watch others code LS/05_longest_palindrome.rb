=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0
=end

def longest_palindrome(str)
  return 0 if str.empty?
  
  result = 1
  array = str.chars
  
  array.each_with_index do |_, ind|
    length = 1
    loop do
      forward = (array[ind...ind + length])
      backward = (array[ind...ind + length].reverse)
      palin = (forward == backward)
      if palin && result < length
        result = length
      end
      
      if array.size > (ind + length)
        length += 1
      else
        break
        
      end
    end
  end
  
  result
end

puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('abcd') == 1
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7

=begin

input = string
output = integer

Find the length of longest palindrome in string
Empty string => 0

### DATA

string, array

### ALGORITHM

if empty, return 0
init palin_length to 1 (if nothing else happens and it's not empty)
convert string to array
iterate through the array (each_with_index)
  start at length 1
  loop
    compare subarray at index, length 
    if equal && plain_length is less than the subarray's length, 
      make palin_length equal to that length
    end
    if whole array size is > index plus length
      increment length
    else break
    end
   end
end
palin_length

=end