=begin
The given code is supposed to remove negative words from sentences. But it
doesn't remove all of them.

This is because we are modifying the collection as we iterate over it. Within
the block passed to each, we use the delete method to remove a word from the
array if it is negative. The first word we encounter which returns true for
negative is 'dull'. Then we delete it. This moves 'boring' into the position
that was previously occupied by 'dull', and it is never checked.

A better solution would be to use select to return an array of only those elements
that are not negative.
=end

def neutralize(sentence)
  words = sentence.split(' ')
  words.select do |word|
    !negative?(word)
  end.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
