def swap(string)
  words = string.split
  
  result = words.map do |current_word|
    current_word[0], current_word[-1] = current_word[-1], current_word[0]
    current_word
  end
  
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'