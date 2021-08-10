def substrings(string)
  all_substrings = []
  
  0.upto(string.size - 1) do |index|
    1.upto(string.size - index) do |length|
      all_substrings << string[index, length]
    end
  end
  
  all_substrings
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]