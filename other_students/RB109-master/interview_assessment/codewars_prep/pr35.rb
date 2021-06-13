def wave(string)
  array = []
  
  0.upto(string.size - 1) do |index|
    array << string[0...index] + string[index].upcase + string[index + 1..-1]
  end
  
  array.delete(string)
  array.uniq
  
end
p wave("hello") #== ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") #== ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") #== []
p wave("two words") #== ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") #== [" Gap ", " gAp ", " gaP "]
