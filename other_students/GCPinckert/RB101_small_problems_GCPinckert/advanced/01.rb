=begin
# Problem:
- Program reads in some text from a text file
  - The text data must come from a file or other external source
- Plugs in a selection of randomized nouns, verbs, adjectives, and adverbs
  - This list of words can be built directly into the program
- Prints the resulting text

# Examples:
Output
  The sleepy brown cat noisily
  licks the sleepy yellow
  dog, who lazily licks his
  tail and looks around.
Text Data
  The %{adjective} brown %{noun} %{adverb}
  %{verb} the %{adjective} yellow
  %{noun}, who %{adverb} %{verb} his
  %{noun} and looks around.
Replacement Words
  adjectives: quick lazy sleepy ugly
  nouns: fox dog head leg
  verbs: jumps lifts bites licks
  adverb: easily lazily noisily excitedly

# Algorithm:
- Create a hash to store our words to be randomly selected
- Initialize a text variable to an empty string
- Access and read the associated text file
- Convert into an array of words
- Iterate over each word
  - If it is 'adjective' substitute a random adj and add to text
  - If it is 'noun' substitute a random noun and add to text
  - If it is 'verb' substitute a random verb and add to text
  - If it is 'adverb' substitute a random adv and add to text
  - Otherwise, add the current word to text
  - Add a space to text
- Output text
=end

WORDS = { adjectives: %w(fast cute small tall smooth dry loud furry young juicy),
          nouns: %w(cat egg hand car purse basketball road ocean whale desk book),
          verbs: %w(runs jumps slides swings shops reads drinks eats sits cooks),
          adverbs: %w(quickly noisily slowly sloppily perfectly fashionably) }

def madlibs(file)
  text = ''

  File.read(file).split.each do |word|
    if word.include?('adjective')
      text << word.gsub('adjective', WORDS[:adjectives].sample)
    elsif word.include?('noun')
      text << word.gsub('noun', WORDS[:nouns].sample)
    elsif word.include?('verb')
      text << word.gsub('verb', WORDS[:verbs].sample)
    elsif word.include?('adv')
      text << word.gsub('adv', WORDS[:adverbs].sample)
    else
      text << word
    end
    text << ' '
  end

  puts text
end

madlibs("madlibs_txt.txt")
