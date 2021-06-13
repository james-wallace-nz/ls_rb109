=begin

PROBLEM:
  - Input: String
  - Output: String
  
rules
    - Explicit rules
      - Write a method so that it converts a camel case string into a kebab
        case

DATA STRUCTURE
- Array
- String

ALGORITHM
- Iterate through each character in string
  - If character is upcase
    - Push '-' and the current character downcase to new string
  - If character is downcase
    - push current character to new string
  - If character is a number
    - ignore it
=end

def kebabize(str)
  str = str.tr('0-9', '')
  
  kebab_array = str.chars.map.with_index do |char, index|
    if char == '-'
      ''
    elsif char.upcase == char
      index == 0 ? char.downcase : '-' + char.downcase 
    else
      char
    end
  end
  
  
  kebab_array.join
end

p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('-MyCamelHas3Humps') #== 'my-camel-has-humps'
