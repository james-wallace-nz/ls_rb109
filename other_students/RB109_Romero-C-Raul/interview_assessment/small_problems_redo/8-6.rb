def repeater(string)
  
  result = string.chars.map do |char|
    char * 2
  end
  
  result.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''