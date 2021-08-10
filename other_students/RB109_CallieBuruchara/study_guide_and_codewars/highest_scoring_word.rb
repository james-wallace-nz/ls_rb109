# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.



=begin
-input: string
-output: selected word from the string (string)
--> highest scoring word
> each letter of the word gets a score of its position in the alphabet (starting at 1)
> if there's a tie, choose the word that is earlier in the string

-accept a string as argument (str)
-reassign str to str.split (array of words)
-initialize a selected word array: selected_word = []
-initialize highes_count


-initialize a constant alphabet array
-iterate over each word
-initialize counter: counter = 0
--> call chars on each word
--> iterate over each letter with each 
--> find position of letter in alphabet, add that number to counter
--> if current counter > highest_count, then replace it. Otherwise...go to next word
--> if current_counter == highest_count, then add it to the array, don't replace the word
- (what to do when there are two words)

=end

ALPHABET = %w(0 a b c d e f g h i j k l m n o p q r s t u v w x y z)

def alphabet_score(str)
  str = str.split
  selected_word = []
  highest_count = 0
  
  str.each do |word|
    counter = 0
    word.chars.each do |letter|
      counter += ALPHABET.index(letter)
    end
   if counter > highest_count
     selected_word.clear
     selected_word << word
     highest_count = counter
   elsif highest_count == counter
     selected_word << word
   else
     next
   end
    
    end
   if selected_word.size > 1
      return selected_word[0]
  end
  selected_word.join
end



p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'