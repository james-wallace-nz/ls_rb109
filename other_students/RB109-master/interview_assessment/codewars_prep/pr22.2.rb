
def scramble(string1, string2)
  
  unique_chars = string2.chars.uniq
  
  unique_chars.all? do |char|
    string1.count(char) >= string2.count(char)
  end
  
end


p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

