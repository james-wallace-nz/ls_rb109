=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

********

input = array of lowercase strings
output = longest "prefix" common to all strings in array

### Algorithm

loop
  grab first char of first string in array
  compare to first char of all other strings
  if all the same repeat with first two chars, etc
  if not break (default "", of whatever it got to)
  


  
=end

def common_prefix(array)
  prefix_length = 1
  result = ""
  
  loop do
    arr_ind = 1

    loop do
      return result unless array[0][0,prefix_length] == array[arr_ind][0,prefix_length]
      
      if (arr_ind + 1) == array.length
        result = array[0][0,prefix_length]
        break
        
      end

      arr_ind += 1
    end
    
    prefix_length += 1
    return result if prefix_length > array[0].length
    
  end
  
end

puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

