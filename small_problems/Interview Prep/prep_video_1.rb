=begin
PROBLEM
Can a string argument be constructed by adding mutltiple copies of a substring of that string

Input: string
Output: boolean - true / false

substring:
A series of characters in sequential order taken from the original string
Substring is 2 or greater characters
But not the whole substring

Can a substring be 1 character long?


EXAMPLES:

'abab'

Subtrings:
a
ab
aba
abab
b
ba
bab
a
ab
b

Unique:
a
ab
aba
ababa
b
ba
bab



DATA STRUCTURE

Strings
Arrays


ALGORITHM
High Level:
- break the `string` argument into every substring
- iterate over the substrings
  - for each iteration, can multiple copies of the current substring equal the original `string`?

Detailed:
- initialize `substrings` as an empty array
- initialize `index` equal to 0

- loop to iterate over the string argument to create each potential substring
  - initialize `stop` equal to `index`

  - loop from `index` up to string length -1, with block parameter `last` for current iteration
    - reference string from `index` to `last`
    - add the reference to `substrings` array

- incremenet `index` by 1
  - break from the loop if if `index` >= string length

- determine the unique elements in `substrings`
- iterate over `unique` substrings with `substring` as block parameter
  - initialise `substring_multiple` equal to `substring`
  - while `substring_multiple` length less than or equal to string length
    - check whether current multiple of the substring is equal to `string`
      - if so, return `true
    - increment `substring_multiple` by appending `substring`

- return `false`


CODE
=end

def repeated_substring_pattern(string)
  substrings = []
  index = 0

  loop do
    index.upto((string.length - 1) / 2) do |last|
      substring = string[index..last]
      substrings << substring
    end

    index += 1
    break if index >= string.length
  end

  substrings.uniq!
  # substrings.select! { |substring| substring.length > 1 && substring != string }

  substrings.each do |substring|
    multiple = string.length / substring.length
    if (substring * multiple) == string
      return true
    end

    # substring_multiple = substring
    # while substring_multiple.length <= string.length
    #   if substring_multiple == string
    #     return true
    #   end
    #   substring_multiple += substring
    # end
  end

  return false
end


=begin
ALGORITHM
- if string length is odd then return false
- split `string` argument into segments based on muliples until substrings are 2 characters in length
  - if left and right are equal then return true otherwise return false

CODE
=end

# def repeated_substring_pattern(string)
#   if string.length == 1
#     true
#   elsif string.length.odd?
#     false
#   else
#     mid = string.length / 2
#     left, right = string[0...mid], string[mid..-1]
#     left == right
#   end
# end
# doesn't work for multiple of same character when odd

p repeated_substring_pattern('abab') == true
puts '---'
p repeated_substring_pattern('aba') == false
puts '---'
p repeated_substring_pattern('aabaaba') == false
puts '---'
p repeated_substring_pattern('abaababaab') == true
puts '---'
p repeated_substring_pattern('abcabcabcabc') == true
puts '---'
p repeated_substring_pattern('a') == true
p repeated_substring_pattern('aaaaa') == true
