# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

=begin
Input: Two strings
Output: Boolean
Rules:
1) Output true if a substring exists which appears in both input strings.
2) Only care about substrings longer than 1 char
3) Case is ignored
4) Numbers are included

**Algorithm**
We need to find all two character substrings in one of the input strings, then check to see if included in the second input string.

1) Initialize variable current_sub = ''
2) Initalize counter variable
2) Begin loop
  -On each iteration, check next set of substrings
3) If a substring is included in the other input string, exit loop, return true
4) If not true, return false

test case: Something, Home
First loop: Want to check 'So'
  -'So' is found at index 0 and 1
Second loop: 'om'
  -'om' at index 1 and 2

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

=end

def substring_test(loop_string, test_string)
  current_sub = ''
  counter = 0
  loop_string = loop_string.downcase
  test_string = test_string.downcase
  string_arr = loop_string.chars

  if loop_string == ''
    return false
  elsif test_string == ''
    return false
  end


  while counter <= (loop_string.length - 2)
    current_sub = string_arr[counter..(counter+1)].join
    if test_string.include?(current_sub)
      return true
    else
      counter += 1
    end
  end
  false
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

- Great job breaking down the problem and noting details
- Good vocalizing your thought process throughout
- Remember to start with talking: Even "I'm going to read the instructions first and take notes of details that I notice."
- Excellent!! noticing that you only had to find substrings that are 2 characters long.
- Be careful on silent pauses: feel free to say "I'm going to think about this silently for a moment." Keep the TA up to date why why you're doing everything you're doing, even when testing.
- Great job walking through a test case to test the logic of your algorithm
- Good decision on going the simpler route, when it was the one you had more confidence in
- You can use index position and brackets on a string, too: 'banana'[0..1] == 'ba'
- I recommend focusing on the edge cases first; in this case, making everything the same case and dealing with empty inputs
- How to comment out things quickly in Coderpad


=end
