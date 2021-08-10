def high(string)
  alphabet = ('a'..'z').to_a
  words = string.split
  
  word_score = Hash.new(0)
  
  words.each do |current_word|
    current_word.chars.each do |letter|
      word_score[current_word] += alphabet.index(letter) + 1
    end
  end
  
  word_score.max_by { |_, score| score }.first
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
