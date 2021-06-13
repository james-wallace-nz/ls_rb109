def letter_case_count(string)
  counter = { uppercase: 0, lowercase: 0, neither: 0 }
  
  string.chars.each do |current_char|
    if ('A'..'Z').include?(current_char)
      counter[:uppercase] += 1
    elsif ('a'..'z').include?(current_char)
      counter[:lowercase] += 1
    else
      counter[:neither] += 1
    end
  end
  
  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }