=begin

ALGORITHM
- Go through each character in the input string
  - Push character into collection unless it is the same as the last
    character in the collection

- Return collection

=end

def crunch(string)
  squeezed = ''
  
  string.chars.each do |current_char|
    squeezed << current_char unless squeezed.end_with?(current_char)
  end
  
  squeezed
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''