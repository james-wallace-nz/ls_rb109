=begin
# Problem:
- Input: a string
- Output: Boolean
  - true if all the parentheses in the string argument are properly balanced
    i.e. occur in matching () pairs
  - return true if there are no parenthesis in the input string
  - false if the parentheses in the string are not balanced

# Examples:
balanced?('What (is) this?') == true
- 'What (is) this?'
- Each open parenthesis has a correct close parentheses

balanced?('What is) this?') == false
- 'What is) this?'
- there is a close parenthesis that does not have an open parentheses

balanced?('What (is this?') == false
- 'What (is this?'
- there is an open parenthesis that is never close

balanced?('((What) (is this))?') == true
- '((What) (is this))?'

balanced?('((What)) (is this))?') == false
- '((What)) (is this))?'
                     ^
- there is an extra close parentheses

balanced?('Hey!') == true
- 'Hey!'
- no parenthesis returns a true

balanced?(')Hey!(') == false
- ')Hey!('
- return false if there is the correct number of parenthesis, but incorrect order

balanced?('What ((is))) up(') == false
- 'What ((is))) up('
              ^   ^

# Algorithm
- Initialize a hash to keep track of parentheses pairs
- Initialize a variable pairs to 0 to keep track of pairs
- Iterate over the characters in the input string
  - If the current char is a `(`:
    - Increment pairs, and add as a key in the hash with a value of `false`
  - If the current char is a `)`:
    - Access the value at the key for the current number of `pairs`
    - Change the associated value to true
    - If the value at the key is `nil`, return false
- Return true if all the values in the hash are true, or if the hash is empty
=end

def balanced?(string)
  parentheses_pairs = {}
  current_pair = 0

  string.each_char do |char|
    if char == '('
      current_pair += 1
      parentheses_pairs[current_pair] = false
    elsif char == ')'
      return false if parentheses_pairs[current_pair] == nil
      parentheses_pairs[current_pair] = true
      current_pair -= 1
    end
  end

  parentheses_pairs.values.all? || parentheses_pairs.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
