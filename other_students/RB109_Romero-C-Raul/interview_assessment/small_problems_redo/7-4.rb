def swapcase(string)

  new_sentence = string.split.map do |current_word|
    
    new_word = current_word.chars.map do |current_letter|
    if ('A'..'Z').include?(current_letter)
      current_letter.downcase
    else
      current_letter.upcase
    end
    end
    
    new_word.join
  end
  
  new_sentence.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE' 
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'