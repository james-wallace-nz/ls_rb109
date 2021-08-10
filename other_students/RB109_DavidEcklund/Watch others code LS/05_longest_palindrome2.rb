=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0
=end

def longest_palindrome(str)
  return 0 if str.empty?
  
  array = str.chars
  simple_subarray!(array)
  array.each do |sub|
    simple_subarray_reverse!(sub) unless sub.length < 2
  end
  array.flatten!
  palin_array = palindrome?(array)
  palin_array.map!(&:length)
  palin_array.max
end

def simple_subarray!(array)
  array.map!.with_index do |_, index|
    array[index..-1]
  end

end

def simple_subarray_reverse!(subarray)  # This could be better named and broken down into two methods
  reverse = simple_subarray!(subarray.reverse)
  new_sub = reverse.map(&:reverse).map(&:join)
  subarray.replace(new_sub)
end

def palindrome?(array)
  array.select do |string|
    string == string.reverse
  end
end


puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('abc') == 1
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7


=begin

ALGORITHM

Split string into array abc --> [a,b,c]
define method simple_subarray!:
  multiply array in multiple sub arrays, one for each character
    each subarray goes from that character until the end of the array
    Use map! with index to replace subarrays with 2 dimensional arrays ([a,b,c] -->[[a,b,c], [b,c], [c]])
define simple_subarray_reverse!
  Put in array of those subarrays, one subarray at a time
    unless array length is less than 2
    take each subarray and replace it with 2 dimensional array
      where each innermost array ends on character sooner than the one preceding it
    e.g. [[a,b,c], [b,c], [c]] --> take [a,b,c] and make [[a, b, c], [a,b], [a]] take [b,c] and make [[b,c], [b]]
    do this by reversing and putting back into simple_subarray! and then re-reversing and replacing subarray with that
    map! all to join back into strings
flatten array of strings

define palindrome? method
  test each string for forwards/backwards equivalence to itself
  if it is, put in new array (select)
  return that array
  
find max length of subarray

=end