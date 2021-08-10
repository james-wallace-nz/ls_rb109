def center_of(string)
  string_middle = string.size / 2
  
  string.size.odd? ? string[string_middle] : string[string_middle - 1, 2] 
  
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'