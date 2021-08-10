def double_consonants(string)
  consonants = ('a'..'z').to_a - %w(a e i o u)
  
  result = string.chars.map do |char|
    if consonants.include?(char.downcase)
      char * 2
    else
      char
    end
  end
  
  result.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""