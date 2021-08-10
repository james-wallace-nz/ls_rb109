=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0
=end


def longest_palindrome(str)
  return 0 if str.empty?
  
  array = []
  str_start = 0
  last_ind = ((str.length) -1)
  
  loop do
    str_end = last_ind
    loop do
      array << str[str_start..str_end]
      
      break if str_end == str_start
      str_end -= 1
    end
    
    break if str_start >= last_ind
    str_start += 1
  end
  
  array.select! {|string| string == string.reverse}
  array.map(&:length).max
end
  

puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7


=begin

ALGORITHM

MAIN TASK: find all substrings!

use a loop with two indexes
first index starts at the beginning
last index starts at the end
the last index moves up until it is the same as the first
then the first increments and the last returns to the last (length -1)


=end