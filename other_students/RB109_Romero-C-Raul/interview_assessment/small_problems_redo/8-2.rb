def leading_substrings(string)
  substrings = []
  
  1.upto(string.size) do |length|
    substrings << string[0, length]
  end
  
  substrings
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']