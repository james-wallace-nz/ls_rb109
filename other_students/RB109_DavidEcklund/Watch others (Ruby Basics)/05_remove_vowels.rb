
# Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.


def remove_vowels(array)
  array.map {|string| string.delete('aeiou')}
end

p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']

=begin

input = array of strings
output = array of same string values minus vowels

DATA
array, string

ALGORITHM

iterate over array 
  for each string, delete('aeiou')
end
array

=end