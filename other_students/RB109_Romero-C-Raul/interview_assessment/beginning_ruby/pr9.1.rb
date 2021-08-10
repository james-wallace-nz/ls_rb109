def common_prefix(array)
  max_substring_length = array.min_by { |string| string.length }.size
  
  shared_leading_substrings = []
  
  0.upto(max_substring_length) do |length|
    current_substrings = []
    
    array.each do |element|
      current_substrings << element[0, length]
    end
    
    shared_substring_count = current_substrings.uniq.size
    shared_leading_substrings << current_substrings[0] if shared_substring_count == 1
  end

  shared_leading_substrings.max_by { |element| element.size }
end


p common_prefix(["flower", "flow", "fliwht"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
