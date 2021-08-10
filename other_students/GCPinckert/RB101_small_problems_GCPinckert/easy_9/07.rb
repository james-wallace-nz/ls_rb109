=begin
# Problem:
 - Input: a string, representing name
  - the format is: first name + ' ' + last name
 - Output: a string, representing the same name
  - the format: last name + ',' + ' ' + first name

# Examples
swap_name('Joe Roberts') == 'Roberts, Joe'
  - input: 'first last'
  - output: 'last, first'
  - to manipulate use [first, last]

Algorithm:
  - Convert the input string to an array of words
  - Reverse the order of the array
  - Join the words with ', ' as delimiter
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
