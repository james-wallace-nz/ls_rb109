def f(s)
  leading_substrings = []
  
  1.upto(s.size) do |length|
    leading_substrings << s[0, length]
  end

  leading_substrings.each do |current_substring|
    repetitions = s.length / current_substring.length
    repeated_string = current_substring * repetitions
    
    return [current_substring, repetitions] if repeated_string == s
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
