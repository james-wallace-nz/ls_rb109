=begin

PROBLEM
- Input: String
- Output: String

rules
  - Explicit rules
    - Must start with a hashtag
    - All words must ave first letter capitalized
    - If final result > 140 chars it must return false
    - If input or result is empty it must return false

DATA STRUCTURE
- String
- Arrays

ALGORITHM
- Return false if string is empty

- Split words by space
- Iterate through each word
  - Capitalize each word

- Join words that were previosly split
- Return false if string is empty

- prepend a hashtag and check size
  - return false if size > 140

=end

def generateHashtag(string)
  return false if string.split.join.empty?
  individual_words = string.split(" ")
  
  capitalized_words = individual_words.map { |word| word.capitalize }
  
  final_result = capitalized_words.join.prepend('#')
  
  final_result.size > 140 ? false : final_result
  
end
  
  
p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
