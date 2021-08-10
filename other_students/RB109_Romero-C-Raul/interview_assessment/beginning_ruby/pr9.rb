=begin
Write a method to find the longest common prefix string amongst an 
array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

PROBLEM
- Input: Array
- Output: String

rules
    - Explicit rules:
      - Write a method to find the longest common prefix string
      - If there is no common prefix, return an empty string

DATA STRUCTURE
- String
- Arrays

ALGORITHM
- Iterate through each element word, obtain all leading substrings, and add to 
  a collection
- Reduce collection using an intersection to see which substrings are shared between
  all words
  
- If no leading substrings were found, return an empty string
=end

def common_prefix(array)
  
  leading_substrings = array.map do |current_element|
    common_leading_substrings = []
    
    1.upto(current_element.size) do |length|
      common_leading_substrings << current_element[0, length]
    end
    
    common_leading_substrings
  end
  
  p leading_substrings.reduce(:&)
  
  final_prefix = leading_substrings.reduce(:&).max_by { |sub_string| sub_string.size }
  
  final_prefix == nil ? '' : final_prefix 
end


p common_prefix(["flower", "flow", "fliwht"]) == "fl"
# p common_prefix(["dog", "racecar", "car"]) == ""
# p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# p common_prefix(["throne", "dungeon"]) == ""
# p common_prefix(["throne", "throne"]) == "throne"
