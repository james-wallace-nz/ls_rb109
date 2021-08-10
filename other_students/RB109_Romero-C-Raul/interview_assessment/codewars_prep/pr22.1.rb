=begin

PROBLEM
- Input: 2 arguments (string1, string2)
- Ouput: Boolean

rules
    - Explicit rules
      - Write a method that returns true IF
        - A portion of the str1 characters can be re-arranged to match str2

problem domain
- string1 has to have the same letters (and same amount of said letters) as string 2
- sort string 2 in alphabetical order
- sort string 1 in alphabetical order
- Check if those same letters appear in the first string in a row

DATA STRUCTURE
- String
- Arrays(?)

ALGORITHM
- Obtain count for second string
- Obtain count for first string (only for letters in second string)
- Check if counter of every letter in first string is greater or equal to 
  second string count
  - Return true if it is, else false
=end

def scramble(string1, string2)
  
  string2_counter = Hash.new(0)
  
  string2.chars.each do |letter|
    string2_counter[letter] += 1
  end
  
  string1_counter = Hash.new(0)
  
  string1.chars.each do |letter|
    string1_counter[letter] += 1 if string2_counter.keys.include?(letter)
  end
  
  return false if string1_counter.keys.size < string2_counter.keys.size
  
  string1_counter.all? do |key, value|
    value >= string2_counter[key]
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

