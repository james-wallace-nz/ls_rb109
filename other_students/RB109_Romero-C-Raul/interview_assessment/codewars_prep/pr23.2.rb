def longest(s)
  longest = ''
  substring = ''
  
  s.chars.each_with_index do |char, idx|
    substring << char if idx == 0 || char >= substring[-1]
    longest = substring if longest.length < substring.length
    substring = char if char < substring[-1] # reset
  end
  longest
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'
