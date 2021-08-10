def palindromes(string)
  all_substrings = []
  
  0.upto(string.size - 1) do |index|
    1.upto(string.size - index) do |length|
      current_substring = string[index, length]
      all_substrings << current_substring if current_substring == current_substring.reverse
    end
  end
  
  all_substrings.select { |char| char.size > 1 }
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]