=begin
** DOES NOT WORK, USED TO TEST REGEXP AS A VARIABLE WITHIN METHOD ARGUMENT


PROBLEM
- Input: 2 arguments (string1, string2)
- Ouput: Boolean

rules
    - Explicit rules
      - Write a method that returns true IF
        - A portion of the str1 characters can be re-arranged to match str2

problem domain
- string1 has to have the same letters (and same amount of said letters as string 2)
- sort string 2 in alphabetical order
- sort string 1 in alphabetical order
- Check if those same letters appear in the first string in a row

DATA STRUCTURE
- String
- Arrays(?)

ALGORITHM
- Split the first string by characters and sort it
- Split the second string by characters and sort it
- Check if the characters shared by the first and second string and equal to
  the characters in the same string
=end

def scramble(string1, string2)
  regexp = '^' << string2
  leftover_strings = string1.tr(regexp, '')
  leftover_strings.chars.uniq.sort == string2.chars.sort.uniq
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

