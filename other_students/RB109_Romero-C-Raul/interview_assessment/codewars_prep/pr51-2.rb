=begin

PROBLEM
- Input: String
- Output: String

rules
    - Write a method that deciphers a string:
      - Second and last letter are switched
      - The first letter is replaced by its character code

DATA STRUCTURE
- Arrays
- Strings

ALGORITHM
- Split string by words
  - Iterate through each word
    - Replace code with corresponding character (helper method)
    - Once you have the full word with no numbers, rotate it back to
      its original meaning

SUB PROCESS (HELPER METHOD)
- Use partition to separate numbers from letters
- Extract character and convert to letter (first sub array)
- Join second sub array
- Push second sub array into first sub array

=end

def decipher(string)
  numbers, letters = string.chars.partition do |element|
    element.to_i.to_s == element.to_s
  end
  
  initial_letter = numbers.join.to_i.chr
  letters = letters.join
  letters[0], letters[-1] = letters[-1], letters[0] unless letters == ''
  
  initial_letter << letters
end

def decipher_this(string)
  words = string.split
  
  words.map do |current_word|
    decipher(current_word)
  end.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") #== "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") #== "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") #== "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") #== "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") #== "Thank you Piotr for all your help"
