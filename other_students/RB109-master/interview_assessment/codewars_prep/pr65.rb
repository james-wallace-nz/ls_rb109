=begin

PROBLEM
- Input: String
- Output: String

rules
  - Explicit rules
    - Write a method that reverses and combines works:
      - More than 1 word? Reverse each word and combine first with second
        - Odd numbered words, last one stays alone but reversed
    
    - Single word -> Returns input

DATA STRUCTURE
- Arrays
- Strings

ALGORITHM
- Split string into individual words
  - Reverse each word in array
  - Combine words in pairs (first and second, third and fourth)
  - Stop when there is only one word left

=end

def reverse_and_combine_text(string)
  words = string.split
  return string if words.size == 1
  
  loop do 
    reversed_words = words.map(&:reverse)
    words = reversed_words.each_slice(2).map(&:join)
    
    break if words.size == 1
  end
  
  words.first
end


p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"
