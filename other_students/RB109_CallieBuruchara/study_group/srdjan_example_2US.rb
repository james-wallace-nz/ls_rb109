# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.


def substring_test(str1, str2)
  return false if str1.empty? || str2.empty?
  str1.size > str2.size ? (longer, shorter = str1.downcase, str2.downcase) : (longer, shorter = str2.downcase, str1.downcase)
  substrings = []
  idx = 0
    until idx > shorter.size - 2
      substrings << shorter[idx, 2]
      idx += 1
    end
substrings.any? {|sub| longer.include?(sub)}
end

p substring_test('Something', 'Fun') ==  false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

=begin
-input: two separate strings
-output: boolean
--> true if a substring in string 1 matches a substring in string 2
--> substring 2+ characters
--> that means we only need two characters to match in order for it to be true

-accept two strings as arguments (str1, str2)
-find the shorter string, and then rename them as shorter & longer
-take the shorter string, call chars on it, use slice to make substrings 2 at a time
-then see if the longer string includes any of those substrings in it


=end
