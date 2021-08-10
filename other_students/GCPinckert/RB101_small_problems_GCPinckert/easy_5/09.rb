=begin
# Problem:
- Input: string
  - may contain either alphabetical or numberical chars (punctuation?)
  - may be an empty string 
- Output: string
  - contains the value of original string, with all consecutive duplicate chars represented by only a   single character
  - i.e. 'aabbcc' => 'abc'
  - empty string returns an empty string

- Do not use #squeeze built-in method

# Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Algorithm:
- Initialize an empty string
- Convert the input string to an array of chars
- Iterate over the array of chars
  - Add the current char to the result string unless the current char is the same as the one next to it
- Return the result string
=end

def crunch(string)
  crunch_string = ''
  string.chars.each_with_index do |char, idx|
    crunch_string << char unless char == string[idx + 1]
  end
  
  crunch_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin
# Further Exploration
When index is equal to text.length, we are out of bounds of the given string.
This is because string characters are based on a 0 index. When accessing
elements that are out of bounds in a string using `[]`, we get a `nil` return.
Therefore, if we iterate all the way out to text.length and access the next
element, it will also return `nil`, which triggers our conditional.
=end