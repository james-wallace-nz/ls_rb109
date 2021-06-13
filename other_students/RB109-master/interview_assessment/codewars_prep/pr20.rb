=begin

ALGORITHM
- Delete every character that is not alphanumerical
- Obtain the count of each uniq character in the string
- Group characters that share the same count

=end

def get_char_count(string)
  string = string.tr('^A-Za-z0-9', '')
  individual_chars = string.chars.map(&:downcase)
  
  char_count = individual_chars.group_by do |char|
    individual_chars.count(char)
  end
  
  char_count.map do |_, values|
    values.sort!.uniq!
  end

  char_count
end    

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
