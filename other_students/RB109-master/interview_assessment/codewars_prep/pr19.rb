=begin

PROBLEM:
- Input: String
- Output: String

rules
    - Explicit rules
      - Write a method that will convert a string into title case, given
        an optional list of exceptions
      - Ignore the case of the minute words string

DATA STRUCTURE
- Strings
- Arrays

ALGORITHM
- If second argument is an empty string
  - capitalize all words in string and return
  
- Go through each word in first argument string
  - If that word (downcased) is included in the second argument 
    string (downcased), transform word into downcase string
  - Else Capitalize word
  
=end

def title_case(title, minor_words = '')
  title_words = title.split(" ")
  return title_words.map(&:capitalize).join(" ") if minor_words.empty?
  
  minor_words_array = minor_words.split(" ").map(&:downcase)
  
  capitalized_title = title_words.map do |current_word|
    if minor_words_array.include?(current_word.downcase)
      current_word.downcase 
    else
      current_word.capitalize
    end
  end
  
  capitalized_title[0] = capitalized_title[0].capitalize
  capitalized_title.join(' ')
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
