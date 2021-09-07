# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.


=begin
PROBLEM
Remove consecutive duplicate characters from a string


Input: string
Output: new string with doubles collapsed

DATA STRUCTURES

String


ALGORITHM
- initialise a `cleaned` string variable
- iterate over every character in the string argument
  - if the current character is not equal to the last character added to `cleaned` then
    - append this character to `cleaned`

- return the `cleaned` string


CODE
=end


def crunch(string)
  cleaned = ''

  string.each_char do |char|
    puts char
    cleaned << char unless char == cleaned[-1]
  end

  cleaned
end


def crunch(string)
  string.gsub(/(.)\1+/, '\1')

end


def crunch(string)
  cleaned = ''
  index = 0

  while index <= string.length - 1
    cleaned << string[index] unless string[index] == string[index + 1]
    index += 1
  end

  cleaned
end

# Examples:
puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
