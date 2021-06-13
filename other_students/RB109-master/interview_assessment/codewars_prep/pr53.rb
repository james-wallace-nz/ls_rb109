def weirdcase(string)
  
  string.split.map do |current_word|
    
    current_word.chars.map.with_index do |current_letter, index|
      index.even? ? current_letter.upcase : current_letter.downcase
    end.join
  end.join(' ')
  
end
p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
