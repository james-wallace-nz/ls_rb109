=begin
# Problem:
  - Input: a string
  - Output: a new string
    - same value as input except each consonent character is doubled
    - vowels, digits, punctuation, and whitespace should not be doubled
    - vowels are a e i o u and do not include y
    - an empty string returns an empty string

# Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

# Algorithm:
  - Initialize doubled to an empty string
  - Loop over characters in the input string, tracking index
    - If the current character is a consonant
      - Add it twice to the doubled string
    - Otherwise add it only once to the doubled string
  - Return the doubled string
=end

def consonant?(char)
  char = char.downcase
  ('a'..'z').include?(char) && 'aeiou'.count(char) == 0
end

def double_consonants(string)
  doubled = ''
  string.each_char do |char|
    if consonant?(char)
      doubled << char * 2
    else
      doubled << char
    end
  end
  
  doubled
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
