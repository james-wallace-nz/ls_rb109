=begin

ALGORITHM
- Go through every character in the given string
  - Transform character to its ascii value

- Reduce collection by addition

=end

def ascii_value(string)
  
  string.chars.map do |current_char|
    current_char.ord
  end.sum
  
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0